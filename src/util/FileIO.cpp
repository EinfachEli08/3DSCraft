#include "util/FileIO.h"

#include <cstring>

namespace FileIO {
FILE* getFile(const char* filepath, const char* perms) {
	char path[256];
	strcpy(path, Path::root.c_str());
	strcat(path, filepath);

	FILE* f = fopen(path, perms);
	if (!f) {
		Crash("Could not open file: %s\nroot: %s", filepath, path);
		return nullptr;
	}

	return f;
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