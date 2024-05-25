#include "client/renderer/texture/TileSetMan.h"

TileSetNew** TileSetMan::cTileSets;

void TileSetMan::init() {
	const char* names[] = {"blocks", "entity"};

	cTileSets = new TileSetNew*[TileSetGroup::COUNT];
	for (u8 i = 0; i < TileSetGroup::COUNT; i++) {
		cTileSets[i] = new TileSetNew(names[i]);
	}
}
