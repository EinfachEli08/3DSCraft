//
// Created by Elias on 03.05.2024.
//

#include <world/worldgen/artefacts/TreeGen.h>

void generateTrees(Chunk* chunk, int x, int y, int z) {
	// Simplicity: Just place a tree every certain interval
	if (x % 20 == 0 && z % 20 == 0) {

		// Place a simple tree (just a trunk and some leaves)
		for (int i = 0; i < 5; i++) {
			if (i == 3) {
				// Place leaves around the top layers of the trunk
				for (int leafX = -2; leafX <= 2; leafX++) {
					for (int leafZ = -2; leafZ <= 2; leafZ++) {
						if (abs(leafX) + abs(leafZ) < 4) { // Leaves form a square
							Chunk_SetBlock(chunk, x + leafX, y + i + 1, z + leafZ, Block_Leaves);
							Chunk_SetBlock(chunk, x + leafX, y + i + 2, z + leafZ, Block_Leaves);
						}
					}
				}
			}
			Chunk_SetBlock(chunk, x, y + i, z, Block_Log); // Trunk
		}

		// Add the "X" shape of leaves on top
		//Chunk_SetBlock(chunk, x, y + 5, z, Block_Leaves); // Center of the "X"
		for (int dx = -1; dx <= 1; dx++) {
			for (int dz = -1; dz <= 1; dz++) {
				if (dx != 0 || dz != 0) { // Exclude the center
					Chunk_SetBlock(chunk, x + dx, y + 6, z + dz, Block_Leaves);
				}
			}
		}
	}
}
