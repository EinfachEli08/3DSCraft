#include "core/registries/Registry.h"
#include <3ds.h>
#include <cstdio>
#include <jansson.h>

int main() {
	gfxInitDefault();
	consoleInit(GFX_TOP, NULL);

	// Create a registry for blocks
	Registry<const char*> blockRegistry("block");

	ResourceLocation* STONE = new ResourceLocation("strone");

	// Register a block (for example purposes)
	blockRegistry.registerEntry(STONE, "Stone");

	// Serialize registry data to a file
	blockRegistry.serialize("blocks.json");

	// Deserialize registry data from a file
	Registry<const char*> loadedBlockRegistry("block");
	loadedBlockRegistry.deserialize("blocks.json");

	// Access a registry entry
	const char** stoneBlock = loadedBlockRegistry.getEntry(STONE);
	if (stoneBlock && *stoneBlock) {
		printf("Loaded block: %s\n", *stoneBlock);
	}

	// Main loop
	while (aptMainLoop()) {
		hidScanInput();
		u32 kDown = hidKeysDown();
		if (kDown & KEY_START)
			break;	// Break in order to return to hbmenu

		gfxFlushBuffers();
		gfxSwapBuffers();
		gspWaitForVBlank();
	}

	gfxExit();
	return 0;
}
