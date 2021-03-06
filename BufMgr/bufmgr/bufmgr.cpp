//Candidate number: 589087
#include "../include/bufmgr.h"
#include "../include/frame.h"
#include <iostream>


using namespace std;
//--------------------------------------------------------------------
// Constructor for BufMgr
//
// Input   : bufSize  - number of pages in the this buffer manager
// Output  : None
// PostCond: All frames are empty.
//--------------------------------------------------------------------

BufMgr::BufMgr( int bufSize )
{
  this->numOfBuf = bufSize;
  this->frames = new Frame*[bufSize];
  for(int i = 0; i < bufSize; i++)
  {
  	frames[i] = new Frame();
  	frames[i]->EmptyIt();
  }
  
  this->replacer = new LRU(frames, numOfBuf);
  this->ResetStat();

}


//--------------------------------------------------------------------
// Destructor for BufMgr
//
// Input   : None
// Output  : None
//--------------------------------------------------------------------

BufMgr::~BufMgr()
{   
  //TODO: add your code here
  delete[] frames;
  delete this->replacer;
}

//--------------------------------------------------------------------
// BufMgr::PinPage
//
// Input    : pid     - page id of a particular page 
//            isEmpty - (optional, default to false) if true indicate
//                      that the page to be pinned is an empty page.
// Output   : page - a pointer to a page in the buffer pool. (NULL
//            if fail)
// Purpose  : Pin the page with page id = pid to the buffer.  
//            Read the page from disk unless isEmpty is true or unless
//            the page is already in the buffer.
// Condition: Either the page is already in the buffer, or there is at
//            least one frame available in the buffer pool for the 
//            page.
// PostCond : The page with page id = pid resides in the buffer and 
//            is pinned. The number of pin on the page increase by
//            one.
// Return   : OK if operation is successful.  FAIL otherwise.
//--------------------------------------------------------------------

Status BufMgr::PinPage(PageID pid, Page*& page, bool isEmpty)
{
	//TODO: add your code here
	

	totalCall++;

	int frame = this-> FindFrame( pid);
	if(frame != INVALID_FRAME)
	{
		totalHit++;
		frames[frame]->Pin(); // increase pin count
		page = frames[frame]->GetPage(); // set return pointer
		return OK;
	}
	else
	{
		frame = this->replacer->PickVictim();
		//cout<<"pin page :- victim frame is "<< frame << endl;
		if( frame != INVALID_FRAME)
		{
			Status status = FlushFrame(frame);
			if(status == FAIL) {
				return FAIL; // unable to flush page
			}
			
			if(isEmpty)
			{
				frames[frame]->SetPageID( pid);
				frames[frame]->Pin(); // increase pin count
				page = frames[frame]->GetPage(); // set return pointer
				return OK;
			}
			else
			{
				Status status = frames[frame]->Read( pid);
				if(status == OK)
				{
					frames[frame]->Pin(); // increase pin count
					page = frames[frame]->GetPage(); // set return pointer
					return OK;
				}
				else
				{
					return FAIL;
				}
			}
			
		}
		else // not possible to evict a page
		{
			return FAIL;
		}
		
	}

} 

//--------------------------------------------------------------------
// BufMgr::UnpinPage
//
// Input    : pid     - page id of a particular page 
//            dirty   - indicate whether the page with page id = pid
//                      is dirty or not. (Optional, default to false)
// Output   : None
// Purpose  : Unpin the page with page id = pid in the buffer. Mark 
//            the page dirty if dirty is true.  
// Condition: The page is already in the buffer and is pinned.
// PostCond : The page is unpinned and the number of pin on the
//            page decrease by one. 
// Return   : OK if operation is successful.  FAIL otherwise.
//--------------------------------------------------------------------


Status BufMgr::UnpinPage(PageID pid, bool dirty)
{

	int frameID = FindFrame(pid);
	if( frameID == INVALID_FRAME) return FAIL;
	if( frames[frameID]->GetPinCount() < 1) return FAIL;

	frames[frameID]->Unpin();
	if(dirty) frames[frameID]->DirtyIt();
	
	return OK;
}

//--------------------------------------------------------------------
// BufMgr::NewPage
//
// Input    : howMany - (optional, default to 1) how many pages to 
//                      allocate.
// Output   : firstPid  - the page id of the first page (as output by
//                   DB::AllocatePage) allocated.
//            firstPage - a pointer to the page in memory.
// Purpose  : Allocate howMany number of pages, and pin the first page
//            into the buffer. 
// Condition: howMany > 0 and there is at least one free buffer space
//            to hold a page.
// PostCond : The page with page id = pid is pinned into the buffer.
// Return   : OK if operation is successful.  FAIL otherwise.
// Note     : You can call DB::AllocatePage() to allocate a page.  
//            You should call DB:DeallocatePage() to deallocate the
//            pages you allocate if you failed to pin the page in the
//            buffer.
//--------------------------------------------------------------------


Status BufMgr::NewPage (PageID& firstPid, Page*& firstPage, int howMany)
{
	//cout << "Try to new " << howMany << " pages"<< endl;
	if( howMany < 1) return FAIL;

	if( MINIBASE_DB->AllocatePage(firstPid, howMany) != OK) return FAIL;

	if( PinPage(firstPid, firstPage, true) != OK)
	{
		MINIBASE_DB->DeallocatePage(firstPid, howMany);
		return FAIL;
	}
	else
	{
		return OK;
	}
}

//--------------------------------------------------------------------
// BufMgr::FreePage
//
// Input    : pid     - page id of a particular page 
// Output   : None
// Purpose  : Free the memory allocated for the page with 
//            page id = pid  
// Condition: Either the page is already in the buffer and is pinned
//            no more than once, or the page is not in the buffer.
// PostCond : The page is unpinned, and the frame where it resides in
//            the buffer pool is freed.  Also the page is deallocated
//            from the database. 
// Return   : OK if operation is successful.  FAIL otherwise.
// Note     : You can call MINIBASE_DB->DeallocatePage(pid) to
//            deallocate a page.
//--------------------------------------------------------------------


Status BufMgr::FreePage(PageID pid)
{
	int frameID = FindFrame( pid);

	if(pid == 50){
		cout<< frameID << endl;
	}
	
	if( frameID == INVALID_FRAME || 
		(frameID != INVALID_FRAME && frames[frameID]->GetPinCount() <= 1) )
	{
		if( frameID != INVALID_FRAME){ // free the frame from buffer pool
			frames[frameID]->EmptyIt();
		}
		// Deallocate page
		MINIBASE_DB->DeallocatePage( pid);
		return OK;
	}
	else
	{
		return FAIL;
	}
}


Status BufMgr::FlushFrame(int fid)
{

	if( frames[fid]->GetPageID() != INVALID_PAGE)
	{
		return FlushPage(frames[fid]->GetPageID());
	}

	return OK;
}
//--------------------------------------------------------------------
// BufMgr::FlushPage
//
// Input    : pid  - page id of a particular page 
// Output   : None
// Purpose  : Flush the page with the given pid to disk.
// Condition: The page with page id = pid must be in the buffer,
//            and is not pinned. pid cannot be INVALID_PAGE.
// PostCond : The page with page id = pid is written to disk if it's dirty. 
//            The frame where the page resides is empty.
// Return   : OK if operation is successful.  FAIL otherwise.
//--------------------------------------------------------------------


Status BufMgr::FlushPage(PageID pid)
{
	// pid cannot bet INVALID_PAGE
	if( pid == INVALID_PAGE) {
		return FAIL;
	}
	
	
	int frameNum = FindFrame( pid);
	// Page not in the buffer
	if( frameNum == INVALID_FRAME) {
		return FAIL; 
	}
	
	

	// Page should not be pinned
	if( !frames[frameNum]->NotPinned()) return FAIL;

	Status status = OK;
	// Flush to the disk if the page is dirty
	if( frames[frameNum]->IsDirty())
	{
		status = MINIBASE_DB->WritePage( frames[frameNum]->GetPageID(), 
			frames[frameNum]->GetPage());
		numDirtyPageWrites++;
	}

	// Empty the page
	frames[frameNum]->EmptyIt();

	return status;
} 

//--------------------------------------------------------------------
// BufMgr::FlushAllPages
//
// Input    : None
// Output   : None
// Purpose  : Flush all pages in this buffer pool to disk.
// Condition: All pages in the buffer pool must not be pinned.
// PostCond : All dirty pages in the buffer pool are written to 
//            disk (even if some pages are pinned). All frames are empty.
// Return   : OK if operation is successful.  FAIL otherwise.
//--------------------------------------------------------------------

Status BufMgr::FlushAllPages()
{
	Status status = OK;
	//Check if all pages in the buffer pool are not pinned
	for(int i = 0; i < numOfBuf; i++)
	{
		// If pinned page found, 
		if( !frames[i]->NotPinned()) 
			status = FAIL;
		
		// Flush if dirty
		if( frames[i]->IsDirty())
		{
			if( MINIBASE_DB->WritePage( frames[i]->GetPageID(), 
				frames[i]->GetPage()) == FAIL)
				status = FAIL;
		}

		// Empty the page
		frames[i]->EmptyIt();
	}

	return status;
}


//--------------------------------------------------------------------
// BufMgr::GetNumOfUnpinnedFrames
//
// Input    : None
// Output   : None
// Purpose  : Find out how many unpinned locations are in the buffer
//            pool.
// Condition: None
// PostCond : None
// Return   : The number of unpinned buffers in the buffer pool.
//--------------------------------------------------------------------

unsigned int BufMgr::GetNumOfUnpinnedFrames()
{
	unsigned int count = 0;

	for(int i = 0; i < numOfBuf; i++)
	{
		if(frames[i]->NotPinned()) count++;
	}
	
	return count;
}

void  BufMgr::PrintStat() {
	cout<<"**Buffer Manager Statistics**"<<endl;
	cout<<"Number of Dirty Pages Written to Disk: "<<numDirtyPageWrites<<endl;
	cout<<"Number of Pin Page Requests: "<<totalCall<<endl;
	cout<<"Number of Pin Page Request Misses "<<totalCall-totalHit<<endl;
}

//--------------------------------------------------------------------
// BufMgr::FindFrame
//
// Input    : pid - a page id 
// Output   : None
// Purpose  : Look for the page in the buffer pool, return the frame
//            number if found.
// PreCond  : None
// PostCond : None
// Return   : the frame number if found. INVALID_FRAME otherwise.
//--------------------------------------------------------------------

int BufMgr::FindFrame( PageID pid )
{
  	// Scan all frames in the buffer to find the page
  	for(int i = 0; i < numOfBuf; i++){
 
    	if( frames[i]->GetPageID() == pid){
 
      		return i;
    	}
  	}
 
  	return INVALID_FRAME;
}
