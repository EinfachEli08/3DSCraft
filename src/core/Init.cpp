#include "core/Init.h"

#include <3ds.h>
#include <stdio.h>
#include <unistd.h>

#include "client/Exception.h"
#include "util/Paths.h"

void init() {
	std::string file = Path::assets + "minecraft/textures/block.t3x";
	if (access(file.c_str(), F_OK)) {
		Crash("ERROR: Could not find assets, please generate them with instructions from the github README.md.\n\n File not found: %s",
			  file.c_str());
	}
	printf("INFO: Assets found.\n");
}
