#pragma once

#include <citro2d.h>
#include <string>

std::string cPathRoot = "romfs:/";
const char* cPath	  = "textures/";

class TileSetNew {
	public:
		TileSetNew(const char* path) : mTileSet(C2D_SpriteSheetLoad(std::string(cPathRoot + cPath + path).c_str())) {}
		~TileSetNew() { C2D_SpriteSheetFree(mTileSet); }

		C3D_Tex* getTile(u8 id) { return C2D_SpriteSheetGetImage(mTileSet, id).tex; }
		C2D_SpriteSheet* getTileSet() { return &mTileSet; }

	private:
		C2D_SpriteSheet mTileSet;
};	// namespace TileSetGroupstructTexTileclass TileSetNew