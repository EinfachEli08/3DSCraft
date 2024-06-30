#pragma once

#include <stdbool.h>
#include <stdint.h>
#include <string.h>

#include "client/renderer/VBOCache.h"
#include "core/Direction.h"
#include "util/math/Xorshift.h"
#include "world/level/blocks/Block.h"

#define CHUNK_SIZE (16)
#define CHUNK_HEIGHT (384)
#define CLUSTER_PER_CHUNK (CHUNK_HEIGHT / CHUNK_SIZE)

struct Cluster {
		int y;
		Block blocks[CHUNK_SIZE][CHUNK_SIZE][CHUNK_SIZE];
		u8 metadataLight[CHUNK_SIZE][CHUNK_SIZE][CHUNK_SIZE];  // first half metadata, second half light

		u32 revision;

		u16 seeThrough;

		bool empty;
		u32 emptyRevision;

		VBO_Block vbo, transparentVBO;
		size_t vertices, transparentVertices;
		u32 vboRevision;
		bool forceVBOUpdate;
};

enum ChunkGenProgress {
	ChunkGen_Empty,	 //
	ChunkGen_Terrain,
	ChunkGen_Finished  // Terrain | Decoration
};

struct Chunk {
		// Die Gesamtanzahl! >= graphicalTasksRunning
		u32 tasksRunning;
		u32 graphicalTasksRunning;

		u32 uuid;

		ChunkGenProgress genProgress;

		int x, z;
		Cluster clusters[CLUSTER_PER_CHUNK];

		u8 heightmap[CHUNK_SIZE][CHUNK_SIZE];
		u32 heightmapRevision;

		size_t revision;

		u32 displayRevision;
		bool forceVBOUpdate;

		int references;
};

extern Xorshift32 uuidGenerator;
extern const u8 _seethroughTable[6][6];
inline u16 ChunkSeeThrough(int inDirection, int outDirection) {
	return 1 << (u16)(_seethroughTable[inDirection][outDirection]);
}
inline bool ChunkCanBeSeenThrough(u16 visiblity, Direction::_ in, Direction::_ out) {
	return visiblity & (1 << (u16)(_seethroughTable[in][out]));
}

inline void Chunk_Init(Chunk* chunk, int x, int z) {
	memset(chunk, 0, sizeof(Chunk));

	chunk->x = x;
	chunk->z = z;
	for (int i = 0; i < CLUSTER_PER_CHUNK; i++) {
		chunk->clusters[i].y		  = i;
		chunk->clusters[i].seeThrough = UINT16_MAX;
		chunk->clusters[i].empty	  = true;
	}
	chunk->uuid = Xorshift32_Next(&uuidGenerator);
}

inline void Chunk_RequestGraphicsUpdate(Chunk* chunk, int cluster) {
	chunk->clusters[cluster].forceVBOUpdate = true;
	chunk->forceVBOUpdate					= true;
}

void Chunk_GenerateHeightmap(Chunk* chunk);
inline u8 Chunk_GetHeightMap(Chunk* chunk, int x, int z) {
	Chunk_GenerateHeightmap(chunk);
	return chunk->heightmap[x][z];
}

inline u8 Chunk_GetMetadata(Chunk* chunk, int x, int y, int z) {
	return chunk->clusters[y / CHUNK_SIZE].metadataLight[x][y - (y / CHUNK_SIZE * CHUNK_SIZE)][z] & 0xf;
}
inline void Chunk_SetMetadata(Chunk* chunk, int x, int y, int z, u8 metadata) {
	metadata &= 0xf;
	Cluster* cluster = &chunk->clusters[y / CHUNK_SIZE];
	u8* addr		 = &cluster->metadataLight[x][y - (y / CHUNK_SIZE * CHUNK_SIZE)][z];
	*addr			 = (*addr & 0xf0) | metadata;
	++cluster->revision;
	++chunk->revision;
}

inline Block Chunk_GetBlock(Chunk* chunk, int x, int y, int z) {
	return chunk->clusters[y / CHUNK_SIZE].blocks[x][y - (y / CHUNK_SIZE * CHUNK_SIZE)][z];
}
// resets the meta data
inline void Chunk_SetBlock(Chunk* chunk, int x, int y, int z, Block block) {
	Cluster* cluster										 = &chunk->clusters[y / CHUNK_SIZE];
	cluster->blocks[x][y - (y / CHUNK_SIZE * CHUNK_SIZE)][z] = block;
	Chunk_SetMetadata(chunk, x, y, z, 0);
	/*++cluster->revision;
	++chunk->revision;*/  // durch das Setzen der Metadaten wird das sowieso erhöht
}
inline void Chunk_SetBlockAndMeta(Chunk* chunk, int x, int y, int z, Block block, u8 metadata) {
	Cluster* cluster										 = &chunk->clusters[y / CHUNK_SIZE];
	cluster->blocks[x][y - (y / CHUNK_SIZE * CHUNK_SIZE)][z] = block;
	metadata &= 0xf;
	u8* addr = &cluster->metadataLight[x][y - (y / CHUNK_SIZE * CHUNK_SIZE)][z];
	*addr	 = (*addr & 0xf0) | metadata;

	++cluster->revision;
	++chunk->revision;
}

bool Cluster_IsEmpty(Cluster* cluster);