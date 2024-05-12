#include "world/World.h"

#include <string.h>

#include <assert.h>
#include <limits.h>
#include <stdint.h>

#include "world/level/blocks/BlockEvent.h"

World::World(WorkQueue* workqueue) {
	strcpy(name, "My World");

	workqueue = workqueue;

	genSettings.seed = 28112000;
	genSettings.type = Enum::WorldGenType::SuperFlat;

	vec_init(&freeChunks);

	blockEvent = new BlockEvent(this);

	reset();
}

void World::reset() {
	cacheTranslationX = 0;
	cacheTranslationZ = 0;

	vec_clear(&freeChunks);

	for (size_t i = 0; i < CHUNKPOOL_SIZE; i++) {
		chunkPool[i].x = INT_MAX;
		chunkPool[i].z = INT_MAX;
		vec_push(&freeChunks, &chunkPool[i]);
	}

	randomTickGen = Xorshift32_New();
}

Chunk* World::loadChunk(int x, int z) {
	for (int i = 0; i < freeChunks.length; i++) {
		if (freeChunks.data[i]->x == x && freeChunks.data[i]->z == z) {
			Chunk* chunk = freeChunks.data[i];
			vec_splice(&freeChunks, i, 1);

			chunk->references++;
			return chunk;
		}
	}

	for (int i = 0; i < freeChunks.length; i++) {
		if (!freeChunks.data[i]->tasksRunning) {
			Chunk* chunk = freeChunks.data[i];
			vec_splice(&freeChunks, i, 1);

			Chunk_Init(chunk, x, z);
			workqueue->addItem((WorkerItem){Enum::WorkerItemType::Load, chunk});

			chunk->references++;
			return chunk;
		}
	}

	return NULL;
}
void World::unloadChunk(int i, int j) {
	unloadChunk(chunkCache[i][j]);
}
void World::unloadChunk(Chunk* chunk) {
	workqueue->addItem((WorkerItem){Enum::WorkerItemType::Save, chunk});
	vec_push(&freeChunks, chunk);
	chunk->references--;
}

Chunk* World::getChunk(int x, int z) {
	int halfS = CHUNKCACHE_SIZE / 2;
	int lowX  = cacheTranslationX - halfS;
	int lowZ  = cacheTranslationZ - halfS;
	int highX = cacheTranslationX + halfS;
	int highZ = cacheTranslationZ + halfS;
	if (x >= lowX && z >= lowZ && x <= highX && z <= highZ)
		return chunkCache[x - lowX][z - lowZ];
	return NULL;
}

Block World::getBlock(int x, int y, int z) {
	if (y < 0 || y >= CHUNK_HEIGHT)
		return Block_Air;
	Chunk* chunk = getChunk(WorldToChunkCoord(x), WorldToChunkCoord(z));
	if (chunk)
		return Chunk_GetBlock(chunk, WorldToLocalCoord(x), y, WorldToLocalCoord(z));
	return Block_Air;
}

#define NOTIFY_NEIGHTBOR(axis, comp, xDiff, zDiff)                                                                                         \
	if (axis == comp) {                                                                                                                    \
		Chunk* neightborChunk = getChunk(cX + xDiff, cZ + zDiff);                                                                          \
		if (neightborChunk)                                                                                                                \
			Chunk_RequestGraphicsUpdate(neightborChunk, y / CHUNK_SIZE);                                                                   \
	}

#define NOTIFY_ALL_NEIGHTBORS                                                                                                              \
	NOTIFY_NEIGHTBOR(lX, 0, -1, 0)                                                                                                         \
	NOTIFY_NEIGHTBOR(lX, 15, 1, 0)                                                                                                         \
	NOTIFY_NEIGHTBOR(lZ, 0, 0, -1)                                                                                                         \
	NOTIFY_NEIGHTBOR(lZ, 15, 0, 1)                                                                                                         \
	if (WorldToLocalCoord(y) == 0 && y / CHUNK_SIZE - 1 >= 0)                                                                              \
		Chunk_RequestGraphicsUpdate(chunk, y / CHUNK_SIZE - 1);                                                                            \
	if (WorldToLocalCoord(y) == 15 && y / CHUNK_SIZE + 1 < CLUSTER_PER_CHUNK)                                                              \
		Chunk_RequestGraphicsUpdate(chunk, y / CHUNK_SIZE + 1);

void World::setBlock(int x, int y, int z, Block block) {
	if (y < 0 || y >= CHUNK_HEIGHT)
		return;
	int cX		 = WorldToChunkCoord(x);
	int cZ		 = WorldToChunkCoord(z);
	Chunk* chunk = getChunk(cX, cZ);
	if (chunk) {
		int lX = WorldToLocalCoord(x);
		int lZ = WorldToLocalCoord(z);
		Chunk_SetBlock(chunk, lX, y, lZ, block);

		NOTIFY_ALL_NEIGHTBORS
	}
}

void World::setBlockAndMeta(int x, int y, int z, Block block, uint8_t metadata) {
	if (y < 0 || y >= CHUNK_HEIGHT)
		return;
	int cX		 = WorldToChunkCoord(x);
	int cZ		 = WorldToChunkCoord(z);
	Chunk* chunk = getChunk(cX, cZ);
	if (chunk) {
		int lX = WorldToLocalCoord(x);
		int lZ = WorldToLocalCoord(z);
		Chunk_SetBlockAndMeta(chunk, lX, y, lZ, block, metadata);

		NOTIFY_ALL_NEIGHTBORS
	}
}

uint8_t World::getMetadata(int x, int y, int z) {
	if (y < 0 || y >= CHUNK_HEIGHT)
		return 0;
	Chunk* chunk = getChunk(WorldToChunkCoord(x), WorldToChunkCoord(z));
	if (chunk)
		return Chunk_GetMetadata(chunk, WorldToLocalCoord(x), y, WorldToLocalCoord(z));
	return 0;
}

void World::setMetadata(int x, int y, int z, uint8_t metadata) {
	if (y < 0 || y >= CHUNK_HEIGHT)
		return;
	int cX		 = WorldToChunkCoord(x);
	int cZ		 = WorldToChunkCoord(z);
	Chunk* chunk = getChunk(cX, cZ);
	if (chunk) {
		int lX = WorldToLocalCoord(x);
		int lZ = WorldToLocalCoord(z);
		Chunk_SetMetadata(chunk, lX, y, lZ, metadata);

		NOTIFY_ALL_NEIGHTBORS
	}
}

int World::getHeight(int x, int z) {
	int cX		 = WorldToChunkCoord(x);
	int cZ		 = WorldToChunkCoord(z);
	Chunk* chunk = getChunk(cX, cZ);
	if (chunk) {
		int lX = WorldToLocalCoord(x);
		int lZ = WorldToLocalCoord(z);

		return Chunk_GetHeightMap(chunk, lX, lZ);
	}
	return 0;
}

void World::updateChunkCache(int orginX, int orginZ) {
	if (orginX != cacheTranslationX || orginZ != cacheTranslationZ) {
		Chunk* tmpBuffer[CHUNKCACHE_SIZE][CHUNKCACHE_SIZE];
		memcpy(tmpBuffer, chunkCache, sizeof(tmpBuffer));

		int oldBufferStartX = cacheTranslationX - CHUNKCACHE_SIZE / 2;
		int oldBufferStartZ = cacheTranslationZ - CHUNKCACHE_SIZE / 2;

		int diffX = orginX - cacheTranslationX;
		int diffZ = orginZ - cacheTranslationZ;

		for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
			for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
				int wx = orginX + (i - CHUNKCACHE_SIZE / 2);
				int wz = orginZ + (j - CHUNKCACHE_SIZE / 2);
				if (wx >= oldBufferStartX && wx < oldBufferStartX + CHUNKCACHE_SIZE && wz >= oldBufferStartZ &&
					wz < oldBufferStartZ + CHUNKCACHE_SIZE) {
					chunkCache[i][j]				= tmpBuffer[i + diffX][j + diffZ];
					tmpBuffer[i + diffX][j + diffZ] = NULL;
				} else {
					chunkCache[i][j] = loadChunk(wx, wz);
				}
			}
		}

		for (int i = 0; i < CHUNKCACHE_SIZE; i++) {
			for (int j = 0; j < CHUNKCACHE_SIZE; j++) {
				if (tmpBuffer[i][j] != NULL) {
					unloadChunk(tmpBuffer[i][j]);
				}
			}
		}

		cacheTranslationX = orginX;
		cacheTranslationZ = orginZ;
	}
}

void World::tick() {
	for (int x = 0; x < CHUNKCACHE_SIZE; x++)
		for (int z = 0; z < CHUNKCACHE_SIZE; z++) {
			Chunk* chunk = chunkCache[x][z];

			if (chunk->genProgress == ChunkGen_Empty && !chunk->tasksRunning)
				workqueue->addItem((WorkerItem){Enum::WorkerItemType::BaseGen, chunk});

			if (x > 0 && z > 0 && x < CHUNKCACHE_SIZE - 1 && z < CHUNKCACHE_SIZE - 1 && chunk->genProgress == ChunkGen_Terrain &&
				!chunk->tasksRunning) {
				bool clear = true;
				for (int xOff = -1; xOff < 2 && clear; xOff++)
					for (int zOff = -1; zOff < 2 && clear; zOff++) {
						Chunk* borderChunk = chunkCache[x + xOff][z + zOff];
						if (borderChunk->genProgress == ChunkGen_Empty || !borderChunk->tasksRunning)
							clear = false;
					}
				if (clear)
					workqueue->addItem((WorkerItem){Enum::WorkerItemType::Decorate, chunk});

				int xVals[RANDOMTICKS_PER_CHUNK];
				int yVals[RANDOMTICKS_PER_CHUNK];
				int zVals[RANDOMTICKS_PER_CHUNK];
				for (int i = 0; i < RANDOMTICKS_PER_CHUNK; i++) {
					xVals[i] = WorldToLocalCoord(Xorshift32_Next(&randomTickGen));
					yVals[i] = WorldToLocalCoord(Xorshift32_Next(&randomTickGen));
					zVals[i] = WorldToLocalCoord(Xorshift32_Next(&randomTickGen));
				}
				blockEvent->randomTick(chunk, xVals, yVals, zVals);
			}
		}
}