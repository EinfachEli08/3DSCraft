#include <world/worldgen/NormalGen.h>

//#include <world/worldgen/artefacts/TreeGen.h>
#include <test/TestTreeGen.h>
#include <sino/sino.h>

void NormalGen_Init(NormalGen* gen, World* world) { gen->world = world; }

// Function to generate caves
void generateCaves(Chunk* chunk, int x, int y, int z) {
    // Simplicity: Randomly create caves within certain height range
    if (y > 5 && y < 10 && rand() % 100 < 20) {
        for (int i = x - 3; i <= x + 3; i++) {
            for (int j = y - 3; j <= y + 3; j++) {
                for (int k = z - 3; k <= z + 3; k++) {
                    if (i >= 0 && j >= 0 && k >= 0 && i < CHUNK_SIZE && j < CHUNK_HEIGHT && k < CHUNK_SIZE) {
                        Chunk_SetBlock(chunk, i, j, k, Block_Air);
                    }
                }
            }
        }
    }
}

int i = 0;

void NormalGen_Generate(WorkQueue* queue, WorkerItem item, void* notthis) {
    NormalGen* gen = notthis;

    for (int x = 0; x < CHUNK_SIZE; x++) {
        for (int z = 0; z < CHUNK_SIZE; z++) {
        i++;
            float px = (float)(x + item.chunk->x * CHUNK_SIZE);
            float pz = (float)(z + item.chunk->z * CHUNK_SIZE);

            const int clusterSize = 8;
            const int chunkHeight = 16;

            int height = (int)(sino_2d((px) / (clusterSize * 4), (pz) / (clusterSize * 4)) * clusterSize) + (chunkHeight * clusterSize / 2);

            for (int y = 0; y < height - 3; y++) {
                Chunk_SetBlock(item.chunk, x, y, z, Block_Bedrock);
            }
            for (int y = 1; y < height - 3; y++) {
                Chunk_SetBlock(item.chunk, x, y, z, Block_Stone);
            }
            for (int y = height - 3; y < height; y++) {
                Chunk_SetBlock(item.chunk, x, y, z, Block_Dirt);
            }

            Chunk_SetBlock(item.chunk, x, height, z, Block_Grass);

	if(i>=5){
		generateTrees(item.chunk, x, height, z);
	i=0;

}



            generateCaves(item.chunk, x, height, z);

        }
    }
}