#pragma once

#include <citro3d.h>
#include <stdint.h>

#define TEXTURE_MAPSIZE 128
#define TEXTURE_TILESIZE 16
#define TEXTURE_MAPTILES (TEXTURE_MAPSIZE / TEXTURE_TILESIZE)

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
		MapIcon icons[TEXTURE_MAPTILES * TEXTURE_MAPTILES];
};

void tileImage8(u8* src, u8* dst, s32 size);
void tileImage32(u32* src, u8* dst, s32 sizex, s32 sizey);