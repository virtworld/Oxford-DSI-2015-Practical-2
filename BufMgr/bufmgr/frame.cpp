//Candidate number: 589087
#include "../include/frame.h"
#include "../include/db.h"

Frame::Frame()
{
	this->EmptyIt();
}

Frame::~Frame()
{
	delete this->data;
}

PageID Frame::GetPageID( void)
{
  	return this->pid;
}

void Frame::EmptyIt( void)
{
	this->data = new Page();
	this->pid = INVALID_PAGE;
	this->pinCount = 0;
	this->dirty = false;
	clock_gettime(CLOCK_REALTIME, &timestamp);
}

Page* Frame::GetPage( void)
{
	return this->data;
}

void Frame::Pin( void)
{
	pinCount++;
	clock_gettime(CLOCK_REALTIME, &timestamp);
}

void Frame::Unpin( void)
{
	pinCount--;
}

void Frame::SetPageID( PageID pid)
{
	this->pid = pid;
}

Status Frame::Read(PageID pid)
{
	Status status = MINIBASE_DB->ReadPage( pid, data);
	if( status == OK)
	{
		this->pid = pid;
	}

	return status;
}

Bool Frame::NotPinned( void)
{
	return pinCount == 0;
}

Bool Frame::IsDirty( void)
{
	return this->dirty;
}

void Frame::DirtyIt( void)
{
	dirty = true;
}

int Frame::GetPinCount( void)
{
	return this->pinCount;
}

long Frame::GetTimeStamp( void)
{
	return this->timestamp.tv_nsec;
}