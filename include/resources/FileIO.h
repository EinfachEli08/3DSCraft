#pragma once

#include <stdio.h>
#include <stdlib.h>

namespace File {

// const char* cPathRoot = "sdmc:/craft/";
// const char* cPathSave = "saves/";

void initFs();
void mkdir(const char* path);
bool isExistFile(const char* path);
inline FILE* getFile(const char* path, const char* perms) {
	if (!isExistFile(path)) {
		printf("FILE NOT EXIST");
		return nullptr;
	}

	FILE* f = fopen(path, perms);
	if (!f) {
		sprintf("CANNOT LOAD FILE %s", path);  // TODO: Exception Handler
		return nullptr;
	}

	return f;
}
}  // namespace File