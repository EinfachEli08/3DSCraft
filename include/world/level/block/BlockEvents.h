#pragma once

#include <world/World.h>
#include <world/level/block/Block.h>

#define RANDOMTICKS_PER_CLUSTER (3)
#define RANDOMTICKS_PER_CHUNK (CLUSTER_PER_CHUNK * RANDOMTICKS_PER_CLUSTER)
void BlockEvent_RandomTick(World* world, Chunk* chunk, int x[], int y[], int z[]);