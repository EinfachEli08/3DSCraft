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
	if (!t3x)
		Crash("Texture could not be loaded: %s", path.c_str());

	Tex3DS_TextureFree(t3x);
}