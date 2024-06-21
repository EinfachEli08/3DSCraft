#pragma once

#include "util/Paths.h"
#include <cstdio>

namespace FileIO {
inline FILE* getFile(const char* filepath, const char* perms);
};