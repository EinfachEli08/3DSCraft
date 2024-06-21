#pragma once

#include <cstdio>

#include "client/Exception.h"
#include "util/Paths.h"

namespace FileIO {
FILE* getFile(const char* filepath, const char* perms = "r");
const char* getText(FILE* file);
inline const char* getText(const char* filepath, const char* perms = "r") {
	FILE* f = getFile(filepath, perms);
	return getText(f);
}
}  // namespace FileIO