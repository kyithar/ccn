cplusplus {{
#include "ccnsim.h"
}}

class noncobject chunk_t;

packet ccn_data{
	@customize(true);

//Chunk identifier (Name+Chunk Number = 64 bit)
	chunk_t chunk;


//Target of the interest file
	int target = -1;

//Origin of the interest file
	int origin = -1;
	int hops = 0;

//Prob-Cache decision strategy
	int TSB = 0; //Time Since Birth
	int TSI = 0; //Time Since Injection
	double capacity = 0; //Path capacity

//Betweenness decision strategy
	double btw = 0;// carries the higher betweenness identified by the interest packet


	bool found = false; 
}
