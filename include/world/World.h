#pragma once

#include <vec/vec.h>

#include "level/chunk/Chunk.h"
#include "util/NumberUtils.h"
#include "util/Xorshift.h"
#include "world/WorkQueue.h"

#define WORLD_NAME_LIMIT 12

#define CHUNKCACHE_SIZE (8)
#define UNDEADCHUNKS_COUNT (2 * CHUNKCACHE_SIZE + CHUNKCACHE_SIZE * CHUNKCACHE_SIZE)
#define CHUNKPOOL_SIZE (CHUNKCACHE_SIZE * CHUNKCACHE_SIZE + UNDEADCHUNKS_COUNT)

namespace Enum {
enum WorldGenType {
	Normal,
	SuperFlat,
	Custom
};
const short WorldGenTypeCount = 5;
};	// namespace Enum

struct GeneratorSettings {
		uint64_t seed;
		Enum::WorldGenType type;
		union {
				struct {
						// Keine Einstellungen...
				} superflat;
		} settings;
};

class BlockEvent;

class World {
	public:
		World(WorkQueue* workqueue);

		void reset();
		void tick();

		Chunk* loadChunk(int x, int y);
		void unloadChunk(int x, int y);
		void unloadChunk(Chunk* chunk);
		Chunk* getChunk(int x, int y);

		Block getBlock(int x, int y, int z);
		void setBlock(int x, int y, int z, Block block);

		void setBlockAndMeta(int x, int y, int z, Block block, uint8_t metadata);
		uint8_t getMetadata(int x, int y, int z);
		void setMetadata(int x, int y, int z, uint8_t metadata);

		void updateChunkCache(int orginX, int orginZ);
		int getHeight(int x, int z);

		char name[WORLD_NAME_LIMIT];

		GeneratorSettings genSettings;

		int cacheTranslationX, cacheTranslationZ;

		Chunk chunkPool[CHUNKPOOL_SIZE];
		Chunk* chunkCache[CHUNKCACHE_SIZE][CHUNKCACHE_SIZE];
		vec_t(Chunk*) freeChunks;

		WorkQueue* workqueue;
		BlockEvent* blockEvent;

		Xorshift32 randomTickGen;
};
/*
void World_Init(World* world, WorkQueue* workqueue);

void World_Reset(World* world);

void World_Tick(World* world);

Chunk* World_LoadChunk(World* world, int x, int z);
void World_UnloadChunk(World* world, Chunk* chunk);

Chunk* World_GetChunk(World* world, int x, int z);

Block World_GetBlock(World* world, int x, int y, int z);
void World_SetBlock(World* world, int x, int y, int z, Block block);
uint8_t World_GetMetadata(World* world, int x, int y, int z);
void World_SetMetadata(World* world, int x, int y, int z, uint8_t metadata);

void World_SetBlockAndMeta(World* world, int x, int y, int z, Block block, uint8_t metadata);

void World_UpdateChunkCache(World* world, int orginX, int orginZ);

int World_GetHeight(World* world, int x, int z);
*/
// util

inline static int WorldToChunkCoord(int x) {
	return (x + (int)(x < 0)) / CHUNK_SIZE - (int)(x < 0);
}
inline static int WorldToLocalCoord(int x) {
	return x - WorldToChunkCoord(x) * CHUNK_SIZE;
}