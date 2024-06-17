#include "client/renderer/texture/Texture.h"

#include <3ds.h>
#include <malloc.h>
#include <stdio.h>
#include <stdlib.h>

#include "client/Exception.h"
#include "util/Paths.h"

Texture::Texture(ResourceLocation location, bool vram) {
	const std::string path = std::string(std::string(Path::assets) + location.getNamespace() + "/textures/" + location.getPath());
	FILE* f				   = fopen(path.c_str(), "rb");	 // maybe inline "filename get" somewhere?
	if (!f)
		Crash("File could not be opened for texture: %s", path.c_str());

	Tex3DS_Texture t3x = Tex3DS_TextureImportStdio(f, &mTex, nullptr, vram);
	const char* msg	   = "Texture could not be loaded, ";
	if (!t3x)
		Crash("%st3x null: %s", msg, path.c_str());
	if (!&mTex)
		Crash("%st3x null: %s", msg, path.c_str());

	Tex3DS_TextureFree(t3x);
	fclose(f);
}
Texture::Atlas::Atlas(ResourceLocation location, bool vram, u8 tileSize) : mTileSize(tileSize) {
	const std::string path = std::string(std::string(Path::assets) + location.getNamespace() + "/textures/" + location.getPath());
	FILE* f				   = fopen(path.c_str(), "rb");	 // maybe inline "filename get" somewhere?
	if (!f)
		Crash("File could not be opened for texture: %s", path.c_str());

	mAtlas			= Tex3DS_TextureImportStdio(f, &mTex, nullptr, vram);
	const char* msg = "Texture could not be loaded, ";
	if (!mAtlas)
		Crash("%st3x atlas null: %s", msg, path.c_str());

	fclose(f);
}
void Texture::Atlas::getUV(u16 index, u16* out) {
	const Tex3DS_SubTexture* sub = Tex3DS_GetSubTexture(mAtlas, index);
	out[0]						 = sub->left / sub->width;
	out[1]						 = sub->top / sub->height;
	Crash("%i, %i, %i, %i", out[0], out[1], out, sub);
}