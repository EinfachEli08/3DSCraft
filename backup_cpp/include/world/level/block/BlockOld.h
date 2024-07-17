#pragma once

#include <citro3d.h>
#include <stdbool.h>
#include <stdint.h>

#include "core/Direction.h"

typedef uint8_t Block;

enum {
	Block_Air,
	Block_Stone,
	Block_Smooth_Stone,
	Block_Smooth_Stone_Slab,
	Block_Dirt,
	Block_Grass,
	Block_Cobblestone,
	Block_Sand,
	Block_Log,
	Block_Leaves,
	Block_Glass,
	Block_Stone_Bricks,
	Block_Brick,
	Block_Planks,
	Block_Wool,
	Block_Bedrock,
	Blocks_Count
};

void Block_Init();
void Block_Deinit();

C3D_Tex* Block_GetTileSet();  // always a C3D_Tex*

void Block_GetTexture(Block block, int direction, uint8_t metadata, int16_t* out_uv);

void Block_GetColor(Block block, uint8_t metadata, int direction, uint8_t out_rgb[]);

bool Block_Opaque(Block block, uint8_t metadata);

extern const char* BlockNames[Blocks_Count];
