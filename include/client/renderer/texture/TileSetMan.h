#pragma once

#include "client/renderer/texture/TileSet.h"

namespace TileSetGroup {
enum _ : u8 {
	BLOCKS = 0,
	ENTITY,
	FONT,
	GUI,
	GUI_TITLE,
	OTHERS,
	COUNT
};
}  // namespace TileSetGroup

struct TexTile {
		TileSetGroup::_ group;
		u8 id;
};

class TileSetMan {
		static TileSetNew** cTileSets;

	public:
		static void init();
		static void deinit() {
			for (u8 i = 0; i < TileSetGroup::COUNT; i++) {
				delete cTileSets[i];
			}
		}
		static TileSetNew* getSet(TileSetGroup::_ group) { return cTileSets[group]; }
		static C3D_Tex* getTexture(TexTile tile) { return getSet(tile.group)->getTile(tile.id); }
};