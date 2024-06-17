#pragma once

typedef enum {
	GameState_SelectWorld,
	GameState_Playing,
	GameState_TitleScreen
} GameState;  // TODO: remove

static bool gIsDebug		= false;
static const char* gVersion = "v0.4";