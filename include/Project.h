#pragma once

typedef enum {
	GameState_SelectWorld,
	GameState_Playing,
	GameState_TitleScreen
} GameState;  // TODO: remove

extern const char* gVersion;
extern bool gIsDebug;