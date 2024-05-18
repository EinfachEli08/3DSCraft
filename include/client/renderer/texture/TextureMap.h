#pragma once

#include <citro3d.h>

const int cMipmapLevels = 2;

const u8 cTextureMapSize	= 128;
const u8 cTextureTileSize	= 16;
const u8 cTextureMapTileNum = (cTextureMapSize / cTextureTileSize);
const C3D_TexInitParams cTextureMapParams =
	(C3D_TexInitParams){cTextureMapSize, cTextureMapSize, cMipmapLevels, GPU_RGBA8, GPU_TEX_2D, true};
const u32 cTextureFlags = GX_TRANSFER_FLIP_VERT(1) | GX_TRANSFER_OUT_TILED(1) | GX_TRANSFER_RAW_COPY(0) |
						  GX_TRANSFER_IN_FORMAT(GX_TRANSFER_FMT_RGBA8) | GX_TRANSFER_OUT_FORMAT(GX_TRANSFER_FMT_RGBA8) |
						  GX_TRANSFER_SCALING(GX_TRANSFER_SCALE_NO);

class Texture {
	public:
		Texture(C3D_Tex* texture, char* filename);
		Texture() {}

		struct MapIcon {
				u32 textureHash;
				s16 u, v;
		};
		
		C3D_Tex* getTexture() { return &mTexture; }

	protected:
		C3D_Tex mTexture;
};

class TextureMap : public Texture {
	public:
		TextureMap(char** files, int num_files);

		MapIcon getIcon(char* filename);

	private:
		MapIcon icons[cTextureMapTileNum * cTextureMapTileNum];
};

void tileImage8(u8* src, u8* dst, s32 size);
void tileImage32(u32* src, u8* dst, s32 sizex, s32 sizey);