#pragma once

typedef enum {
	GameState_SelectWorld,
	GameState_Playing
} GameState;

#ifdef _DEBUG
#pragma message "WARNING: Compiling with Debug-Flag"

#define DEBUG_BLOCKPLACE 1
#endif

// GET VERSION FROM MAKEFILE
#define STRINGIFY(x) #x
#define EXPAND_AND_STRINGIFY(x) STRINGIFY(x)
#ifdef _DEBUG
#define VERSION_STRING_BAKER(major, minor, micro)                                                                                          \
	"v" EXPAND_AND_STRINGIFY(major) "." EXPAND_AND_STRINGIFY(minor) "." EXPAND_AND_STRINGIFY(micro) " INDEV"
#else
#define VERSION_STRING_BAKER(major, minor, micro)                                                                                          \
	"v" EXPAND_AND_STRINGIFY(major) "." EXPAND_AND_STRINGIFY(minor) "." EXPAND_AND_STRINGIFY(micro)
#endif
#define APP_VERSION VERSION_STRING_BAKER(_VER_MAJ, _VER_MIN, _VER_MIC)

#define AUTHOR "Team-Omega"
