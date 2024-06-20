#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

#include <3ds.h>

#include "client/Exception.h"

void CrashBase(bool isExit, const char* reason, va_list args) {
	consoleInit(GFX_TOP, NULL);

	vprintf(reason, args);	// Print to console

	/* Example: Print to file
	FILE* f = fopen("sdmc:/craft/crash.txt", "w");
	if (f) {
		vfprintf(f, reason, args);
		fclose(f);
	}
	*/

	va_end(args);

	if (isExit)
		printf("\n\nFatal error, press start to exit\n");
	else
		printf("\n\nBreakpoint, press start to continue\n");

	while (aptMainLoop()) {
		gspWaitForVBlank();

		hidScanInput();

		if (hidKeysDown() & KEY_START)
			break;
	}

	if (isExit)
		exit(EXIT_FAILURE);
}

void Crash(const char* reason, ...) {
	va_list args;
	va_start(args, reason);

	CrashBase(true, reason, args);	// Pass va_list to CrashOrNot

	va_end(args);
}

void Break(const char* reason, ...) {
	va_list args;
	va_start(args, reason);

	CrashBase(false, reason, args);	 // Pass va_list to CrashOrNot

	va_end(args);
}
