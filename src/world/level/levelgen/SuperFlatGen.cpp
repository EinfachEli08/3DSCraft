#include "world/level/levelgen/SuperFlatGen.h"

#include "util/math/NumberUtils.h"
#include "world/WorkQueue.h"

void SuperFlatGen::chunkFunction(WorkQueue* queue, WorkerItem item) {
	for (int y = 0; y < 17; y++) {
		Block block = Block_Air;
		switch (y) {  // TODO: Mit einem Lookup Table ersetzen, Superflach Gen konfigurierbar machen
			case 0:
				block = Block_Bedrock;
				break;
			case 1 ... 2:
				block = Block_Dirt;
				break;
			case 3:
				block = Block_Grass;
				break;
			default:
				block = Block_Air;
				break;
		}
		for (int x = 0; x < CHUNK_SIZE; x++)
			for (int z = 0; z < CHUNK_SIZE; z++)
				Chunk_SetBlock(item.chunk, x, y, z, block);
	}
}