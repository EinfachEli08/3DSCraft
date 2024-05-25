#pragma once

#include <citro2d.h>
#include <string>

class TileSetNew {
		const char* cPathRoot = "romfs:/";
		const char* cPath	  = "textures/";

	public:
		TileSetNew(const char* path) : mTileSet(C2D_SpriteSheetLoad(std::string(cPathRoot + std::string(cPath) + path).c_str())) {}
		~TileSetNew() { C2D_SpriteSheetFree(mTileSet); }

		C3D_Tex* getTile(u8 id) { return C2D_SpriteSheetGetImage(mTileSet, id).tex; }
		C2D_SpriteSheet* getSet() { return &mTileSet; }

	private:
		C2D_SpriteSheet mTileSet;
};