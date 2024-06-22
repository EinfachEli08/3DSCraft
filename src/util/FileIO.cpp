#include "util/FileIO.h"

#include <cstring>

#include "resources/ResourceLocation.h"

FILE* get(const char* filepath, const char* perms) {
	FILE* f = fopen(filepath, perms);
	if (!f) {
		Crash("Could not open file: %s", filepath);
		return nullptr;
	}

	return f;
}
namespace FileIO {
FILE* getFile(const char* filepath, const char* perms) {
	char path[256];
	strcpy(path, Path::root.c_str());
	strcat(path, filepath);

	return get(path, perms);
}
FILE* getFile(const ResourceLocation& location, const char* perms) {
	char path[256];
	strcpy(path, Path::root.c_str());
	strcat(path, Path::assets.c_str());
	strcat(path, location.getNamespace());
	strcat(path, "/");
	strcat(path, location.getPath());

	return get(path, perms);
}
const char* getText(FILE* file) {
	fseek(file, 0, SEEK_END);
	long fileSize = ftell(file);
	fseek(file, 0, SEEK_SET);

	char* fileContent = (char*)malloc(fileSize + 1);
	fread(fileContent, 1, fileSize, file);
	fclose(file);

	fileContent[fileSize] = '\0';

	return fileContent;
}
}  // namespace FileIO