#include "core/Init.h"

#include "client/Exception.h"
#include <3ds.h>
#include <stdio.h>
#include <unistd.h>

void init() {
	if (access("sdmc:/craft/assets/textures/", F_OK)) {
		Crash("ERROR: Could not find assets, please generate them with instructions from the github README.md.\n");
	}
	printf("INFO: Assets found.\n");
}
