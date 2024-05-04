#include <world/worldgen/CustomGen.h>

#include <sino/sino.h>

void CustomGen_Init(CustomGen* gen, World* world) { gen->world = world; }

// based off https://github.com/smealum/3dscraft/blob/master/source/generation.c
void CustomGen_Generate(WorkQueue* queue, WorkerItem item, void* this) {
	CustomGen* gen = this;
	for (int x = 0; x < CHUNK_SIZE; x++) {
		for (int z = 0; z < CHUNK_SIZE; z++) {
			float px = (float)(x + item.chunk->x * CHUNK_SIZE);
			float pz = (float)(z + item.chunk->z * CHUNK_SIZE);

			const int clusterSize = 8;
			const int chunkHeight = 16;
			int height = (int)(sino_2d((px) / (clusterSize * 4), (pz) / (clusterSize * 4)) * clusterSize) + (chunkHeight * clusterSize / 2);

			for (int y = 0; y < height - 3; y++) {
				Chunk_SetBlock(item.chunk, x, y, z, Block_Bedrock);
			}
			for (int y = height - 3; y < height; y++) {
				Chunk_SetBlock(item.chunk, x, y, z, Block_Sand);
			}
			Chunk_SetBlock(item.chunk, x, height, z, Block_Air);
		}
	}
}