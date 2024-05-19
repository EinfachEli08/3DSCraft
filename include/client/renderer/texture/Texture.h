#pragma once

#include <citro3d.h>
#include <tex3ds.h>

const int cMipmapLevels = 2;

const u8 cTileSetSize				   = 128;
const u8 cTextureTileSize			   = 16;  // TODO: remove
const C3D_TexInitParams cTileSetParams = (C3D_TexInitParams){cTileSetSize, cTileSetSize, cMipmapLevels, GPU_RGBA8, GPU_TEX_2D, true};
const u32 cTextureFlags				   = GX_TRANSFER_FLIP_VERT(1) | GX_TRANSFER_OUT_TILED(1) | GX_TRANSFER_RAW_COPY(0) |
						  GX_TRANSFER_IN_FORMAT(GX_TRANSFER_FMT_RGBA8) | GX_TRANSFER_OUT_FORMAT(GX_TRANSFER_FMT_RGBA8) |
						  GX_TRANSFER_SCALING(GX_TRANSFER_SCALE_NO);

class Texture {
	public:
		Texture(C3D_Tex* texture, char* filename);
		Texture() {}
		~Texture() {}

		struct Tile {
				u32 textureHash;
				s16 u, v;
		};

		C3D_Tex* getTexture() { return &mTexture; }

	protected:
		C3D_Tex mTexture;
};

class TileSet : public Texture {
	public:
		TileSet(char** files, int num_files, u8 tileSize = 16);

		Tile getIcon(char* filename);

	private:
		Tile* tiles;
		s32 tileNum;
};

void tileImage8(u8* src, u8* dst, s32 size);
void tileImage32(u32* src, u8* dst, s32 sizex, s32 sizey);