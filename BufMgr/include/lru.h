//Candidate number: 589087
#ifndef _LRU_H
#define _LRU_H

#include "replacer.h"
#include "frame.h"

class LRU : public Replacer
{
private:
	int numOfBuf;
	Frame **frames;

public:		
		LRU(Frame** frames, int numOfBuf);
		~LRU();
		int PickVictim();
};

#endif