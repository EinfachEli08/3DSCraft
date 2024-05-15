#pragma once

#include <mpack/mpack.h>
#include <vector>

#include "world/level/chunk/Chunk.h"

#define SUPERCHUNK_SIZE 8
#define SUPERCHUNK_BLOCKSIZE (SUPERCHUNK_SIZE * CHUNK_SIZE)

class SuperChunk {
	public:
		SuperChunk(int x, int z);
		~SuperChunk();

		static void poolsInit();
		static void poolsDeinit();

		void saveIndex();
		void chunkSave(Chunk* chunk);
		void chunkLoad(Chunk* chunk);

		void freeSectors(u32 address, u8 size);
		u32 reserveSectors(int amount);

		struct ChunkInfo {
				u32 position;
				u32 compressedSize;
				u32 actualSize;
				u8 blockSize;
				u32 revision;
		};

		int getX() { return mPosX; }
		int getZ() { return mPosZ; }

	private:
		int mPosX, mPosZ;
		FILE* mDataFile = nullptr;
		ChunkInfo* mGrid[SUPERCHUNK_SIZE][SUPERCHUNK_SIZE];
		std::vector<u8> mSectors;
};

inline static int ChunkToSuperChunkCoord(int x) {
	return (x + (int)(x < 0)) / SUPERCHUNK_SIZE - (int)(x < 0);
}
inline static int ChunkToLocalSuperChunkCoord(int x) {
	return x - ChunkToSuperChunkCoord(x) * SUPERCHUNK_SIZE;
}