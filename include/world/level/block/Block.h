#pragma once

#include "client/renderer/texture/TileSetMan.h"
#include <citro3d.h>

class Block {
		TexTile mTexture;

	public:
		Block(TexTile tex) : mTexture(tex) {}
		C3D_Tex* getTexture();	// Temporary
};
