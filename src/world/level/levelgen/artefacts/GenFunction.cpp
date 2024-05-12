#include "world/level/levelgen/artefacts/GenFunction.h"

namespace GenFunction {

void genTrees(Chunk* chunk, int x, int y, int z) {
	// Simplicity: Just place a tree every certain interval
	if (x % 20 == 0 && z % 20 == 0) {
		// Place a simple tree (just a trunk and some leaves)
		for (int i = 0; i < 5; i++) {
			if (i == 3) {
				// Place leaves around the top layers of the trunk
				for (int leafX = -2; leafX <= 2; leafX++) {
					for (int leafZ = -2; leafZ <= 2; leafZ++) {
						if (abs(leafX) + abs(leafZ) < 4) {	// Leaves form a square
							Chunk_SetBlock(chunk, x + leafX, y + i + 1, z + leafZ, Block_Leaves);
							Chunk_SetBlock(chunk, x + leafX, y + i + 2, z + leafZ, Block_Leaves);
						}
					}
				}
			}
			Chunk_SetBlock(chunk, x, y + i, z, Block_Log);	// Trunk
		}

		// Add the "X" shape of leaves on top
		// Chunk_SetBlock(chunk, x, y + 5, z, Block_Leaves); // Center of the "X"
		for (int dx = -1; dx <= 1; dx++) {
			for (int dz = -1; dz <= 1; dz++) {
				if (dx != 0 || dz != 0) {  // Exclude the center
					Chunk_SetBlock(chunk, x + dx, y + 6, z + dz, Block_Leaves);
				}
			}
		}
	}
}

void genCaves(Chunk* chunk, int x, int y, int z) {
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

}  // namespace GenFunction