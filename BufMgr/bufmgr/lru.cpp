//Candidate number: 589087
#include "../include/lru.h"
#include "../include/frame.h"
#include <sys/time.h>

int LRU::PickVictim( void)
{
	timespec timestamp;
	clock_gettime(CLOCK_REALTIME, &timestamp);
	long lr = timestamp.tv_nsec;

	int victim = INVALID_FRAME;

	for(int i = 0; i < numOfBuf; i++)
	{
		// if an available frame found, return it
		if( frames[i]->GetPageID() == INVALID_PAGE) return i;

		// otherwise, continue to calcluate the timestamp
		if( frames[i]->GetTimeStamp() < lr && frames[i]->NotPinned()){
			lr = frames[i]->GetTimeStamp();
			victim = i;
		}
	}

	return victim;
}

LRU::LRU(Frame** frames, int numOfBuf)
{
	this->numOfBuf = numOfBuf;
	this->frames = frames;
}

LRU::~LRU()
{

}