#pragma once

typedef enum {
	GameState_SelectWorld,
	GameState_Playing
} GameState;

#define VERSION_STRING_BAKER(major, minor, micro) #major "." #minor "." #micro

#define APP_VERSION VERSION_STRING_BAKER(VERSION_MAJOR, VERSION_MINOR, VERSION_MICRO)

#ifdef DEBUG
#pragma message "WARNING: Compiling with Debug-Flag"
#define DEBUG_BLOCKPLACE 1
#endif