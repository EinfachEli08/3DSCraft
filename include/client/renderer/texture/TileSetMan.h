#pragma once

#include "client/renderer/texture/TileSet.h"

namespace TileSetGroup {
enum _ : u8 {
	BLOCKS = 0,
	ENTITY,
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
		static TileSetNew* getSet(TileSetGroup::_ group) { return cTileSets[group]; }
		static C3D_Tex* getTexture(TexTile tile) { return getSet(tile.group)->getTile(tile.id); }
};