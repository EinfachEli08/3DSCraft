#pragma once

#include "client/Exception.h"
#include <citro2d.h>
#include <string>

class TileSetNew {
		const char* cPathRoot = "sdmc:/craft/assets/";
		const char* cPath	  = "textures/";

	public:
		TileSetNew(const char* fileName) {
			char path[256];
			snprintf(path, sizeof(path), "%s%s%s.t3x", cPathRoot, cPath, fileName);

			mTileSet = C2D_SpriteSheetLoad(path);

			if (!mTileSet)
				Crash("ERROR: could not load Texture atlas \'%s\'", path);
		}

		~TileSetNew() { C2D_SpriteSheetFree(mTileSet); }

		C3D_Tex* getTile(u8 id) {
			C2D_Image img = C2D_SpriteSheetGetImage(mTileSet, id);
			C3D_Tex* tex  = img.tex;
			if (!tex)
				Crash("ERROR: could not get Tile from Texture Atlas");

			return tex;
		}
		C2D_SpriteSheet* getSet() { return &mTileSet; }

	private:
		C2D_SpriteSheet mTileSet;
};