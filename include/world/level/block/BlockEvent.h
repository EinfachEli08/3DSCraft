#pragma once

#include "world/World.h"
#include "world/level/block/Block.h"

#define RANDOMTICKS_PER_CLUSTER (3)
#define RANDOMTICKS_PER_CHUNK (CLUSTER_PER_CHUNK * RANDOMTICKS_PER_CLUSTER)

// #x = #y = #z = RANDOMTICKS_PER_CHUNK
class BlockEvent {
	public:
		BlockEvent(World* world) : world(world) {}
		void randomTick(Chunk* chunk, int x[], int y[], int z[]);

	private:
		World* world;
};