#pragma once

#include <citro3d.h>
#include <stdint.h>

const u8 cTextureMapSize	= 128;
const u8 cTextureTileSize	= 16;
const u8 cTextureMapTileNum = (cTextureMapSize / cTextureTileSize);
const u32 cTextureFlags		= GX_TRANSFER_FLIP_VERT(1) | GX_TRANSFER_OUT_TILED(1) | GX_TRANSFER_RAW_COPY(0) |
						  GX_TRANSFER_IN_FORMAT(GX_TRANSFER_FMT_RGBA8) | GX_TRANSFER_OUT_FORMAT(GX_TRANSFER_FMT_RGBA8) |
						  GX_TRANSFER_SCALING(GX_TRANSFER_SCALE_NO);

class Texture {
	public:
		Texture(C3D_Tex* texture, char* filename);
		Texture(){};

		struct MapIcon {
				uint32_t textureHash;
				int16_t u, v;
		};

		C3D_Tex* getTexture() { return &texture; }

	protected:
		C3D_Tex texture;
};

class TextureMap : public Texture {
	public:
		TextureMap(char** files, int num_files);

		MapIcon* getIcon(char* filename);

	private:
		MapIcon icons[cTextureMapTileNum * cTextureMapTileNum];
};

void tileImage8(u8* src, u8* dst, s32 size);
void tileImage32(u32* src, u8* dst, s32 sizex, s32 sizey);