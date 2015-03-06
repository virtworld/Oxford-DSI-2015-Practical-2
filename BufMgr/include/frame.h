//Candidate number: 589087
#ifndef FRAME_H
#define FRAME_H

#include "page.h"
#include <sys/time.h>

#define INVALID_FRAME -1

class Frame 
{
	private :
	
		PageID pid;
		Page   *data;
		int    pinCount;
		bool   dirty;
		timespec timestamp;
		// /timespec ts;

	public :
		
		Frame();
		~Frame();
		void Pin();
		void Unpin();
		void EmptyIt();
		void DirtyIt();
		void SetPageID(PageID pid);
		Bool IsDirty();
		Bool IsValid();
		Status Write();
		Status Read(PageID pid);
		Status Free();
		Bool NotPinned();
		Bool HasPageID(PageID pid);
		PageID GetPageID();
		Page *GetPage();
		int GetPinCount();
		long GetTimeStamp();

		void UnsetReferenced();
		Bool IsReferenced();
		Bool IsVictim();

};

#endif
