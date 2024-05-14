#include "resources/ResourceLocation.h"

void ResourceLocation::create(const char** paths) {
	create(*paths, *++paths);
}
void ResourceLocation::create(const char* namespc, const char* path) {
	mNamespc = namespc;
	mPath	 = path;
}
ResourceLocation::ResourceLocation(const char* namespc, const char* path) {
	create(assertValidNamespace(namespc, path), assertValidPath(namespc, path));
}
ResourceLocation::ResourceLocation(const char* path) {
	create(decompose(path, cNamespcSeparate));
}
