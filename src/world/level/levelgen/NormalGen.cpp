#include "world/level/levelgen/NormalGen.h"

#include <sino/sino.h>

#include "world/WorkQueue.h"
#include "world/level/levelgen/artefacts/GenFunction.h"

void NormalGen::chunkFunction(WorkQueue* queue, WorkerItem item) {
	int i = 0;
	for (int x = 0; x < CHUNK_SIZE; x++) {
		for (int z = 0; z < CHUNK_SIZE; z++) {
			i++;
			float px = (float)(x + item.chunk->x * CHUNK_SIZE);
			float pz = (float)(z + item.chunk->z * CHUNK_SIZE);

			const int clusterSize = 8;
			const int chunkHeight = 16;

			int height = (int)(sino_2d((px) / (clusterSize * 4), (pz) / (clusterSize * 4)) * clusterSize) + (chunkHeight * clusterSize / 2);

			/*for (int y = 0; y < height - 3; y++) {
				Chunk_SetBlock(item.chunk, x, y, z, Block_Bedrock);
			}
			for (int y = 1; y < height - 3; y++) {
				Chunk_SetBlock(item.chunk, x, y, z, Block_Stone);
			}
			for (int y = height - 3; y < height; y++) {
				Chunk_SetBlock(item.chunk, x, y, z, Block_Dirt);
			}

			Chunk_SetBlock(item.chunk, x, height, z, Block_Grass);
*/
			if (i >= 5) {
				GenFunction::genTrees(item.chunk, x, height, z);
				i = 0;
			}

			GenFunction::genCaves(item.chunk, x, height, z);
		}
	}
}