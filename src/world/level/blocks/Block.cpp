#include "world/level/blocks/Block.h"

#include "client/renderer/VertexFmt.h"
#include "client/renderer/texture/Texture.h"

static struct { /*
		 Texture::Tile stone;
		 Texture::Tile stone_bricks;
		 Texture::Tile smooth_stone;
		 Texture::Tile cobblestone;
		 Texture::Tile dirt;
		 Texture::Tile grass_side;
		 Texture::Tile grass_top;
		 Texture::Tile sand;
		 Texture::Tile oaklog_side;
		 Texture::Tile oaklog_top;
		 Texture::Tile leaves_oak;
		 Texture::Tile glass;
		 Texture::Tile brick;
		 Texture::Tile oakplanks;
		 Texture::Tile wool;
		 Texture::Tile bedrock;*/
} icon;

void Block_Init() {
}
void Block_Deinit() {
}

C3D_Tex* Block_GetTileSet() {
}

void Block_GetTexture(Block block, int _direction, u8 metadata, s16* out_uv) {
	/*int direction	= (int)_direction;
	Texture::Tile i = {0, 0, 0};
	switch (block) {
		case Block_Air:
			return;
		case Block_Dirt:
			i = icon.dirt;
			break;
		case Block_Stone:
			i = icon.stone;
			break;
		case Block_Grass:
			switch (direction) {
				case Direction::UP:
					i = icon.grass_top;
					break;
				case Direction::DOWN:
					i = icon.dirt;
					break;
				default:
					i = icon.grass_side;
					break;
			}
			break;
		case Block_Cobblestone:
			i = icon.cobblestone;
			break;
		case Block_Smooth_Stone:
			i = icon.smooth_stone;
			break;
		case Block_Log:
			switch (direction) {
				case Direction::DOWN:
				case Direction::UP:
					i = icon.oaklog_top;
					break;
				default:
					i = icon.oaklog_side;
					break;
			}
			break;
		case Block_Sand:
			i = icon.sand;
			break;
		case Block_Leaves:
			i = icon.leaves_oak;
			break;
		case Block_Glass:
			i = icon.glass;
			break;
		case Block_Stone_Bricks:
			i = icon.stone_bricks;
			break;
		case Block_Brick:
			i = icon.brick;
			break;
		case Block_Planks:
			i = icon.oakplanks;
			break;
		case Block_Wool:
			i = icon.wool;
			break;
		case Block_Bedrock:
			i = icon.bedrock;
			break;
		default:
			break;
	}
	out_uv[0] = i.u;
	out_uv[1] = i.v;*/
}

#define extractR(c) ((c >> 16) & 0xff)
#define extractG(c) (((c) >> 8) & 0xff)
#define extractB(c) ((c) & 0xff)
/*#define toRGB16(c) \
	{ extractR(c), extractG(c), extractB(c) }*/
void Block_GetColor(Block block, u8 metadata, int _direction, u8 out_rgb[]) {
	int direction = (int)_direction;
	if ((block == Block_Grass && direction == Direction::UP) || block == Block_Leaves) {
		out_rgb[0] = 140;
		out_rgb[1] = 214;
		out_rgb[2] = 123;
		return;
	}
	// white, orange, magenta, light blue, yellow, lime, pink, gray, silver, cyan, purple, blue, green, red, black
	const u32 dies[] = {(16777215), (14188339), (11685080), (6724056), (15066419), (8375321), (15892389), (5000268),
						(10066329), (5013401),	(8339378),	(3361970), (6704179),  (6717235), (10040115), (1644825)};
	if (block == Block_Wool) {
		out_rgb[0] = extractR(dies[metadata]);
		out_rgb[1] = extractG(dies[metadata]);
		out_rgb[2] = extractB(dies[metadata]);
	} else {
		out_rgb[0] = 255;
		out_rgb[1] = 255;
		out_rgb[2] = 255;
	}
}

bool Block_Opaque(Block block, u8 metadata) {
	return block != Block_Air && block != Block_Leaves && block != Block_Glass;
}

const char* BlockNames[Blocks_Count] = {"Air",	  "Smooth Stone", "Stone",		  "Dirt",	"Grass",  "Cobblestone", "Sand",   "Log",
										"Leaves", "Glass",		  "Stone Bricks", "Bricks", "Planks", "Wool",		 "Bedrock"};
