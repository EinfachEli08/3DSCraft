#pragma once

#include <citro2d.h>
#include <string>

class TileSetNew {
	public:
		TileSetNew(const char* path) : mTileSet(C2D_SpriteSheetLoad(path)) {}
		~TileSetNew() { C2D_SpriteSheetFree(mTileSet); };

		C3D_Tex* getTile(u8 index) { return C2D_SpriteSheetGetImage(mTileSet, index).tex };
		C2D_SpriteSheet* getTileSet() { return &mTileSet; }

	private:
		C2D_SpriteSheet mTileSet;
};