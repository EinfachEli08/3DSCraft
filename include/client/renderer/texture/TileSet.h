#pragma once

#include <citro2d.h>
#include <string>

class TileSetNew {
		const char* cPathRoot = "sdmc:/craft/assets/";
		const char* cPath	  = "textures/";

	public:
		TileSetNew(const char* fileName) {
			const char* path = std::string(cPathRoot + std::string(cPath) + fileName + ".t3x").c_str();
			mTileSet		 = C2D_SpriteSheetLoad(path);
			if (!mTileSet)
				printf("ERROR: could not load Texture atlas \'%s\'", path);
		}

		~TileSetNew() { C2D_SpriteSheetFree(mTileSet); }

		C3D_Tex* getTile(u8 id) {
			C2D_Image img = C2D_SpriteSheetGetImage(mTileSet, id);
			C3D_Tex* tex  = img.tex;
			if (!tex)
				printf("ERROR: could not get Tile from Texture Atlas");

			return tex;
		}
		C2D_SpriteSheet* getSet() { return &mTileSet; }

	private:
		C2D_SpriteSheet mTileSet;
};