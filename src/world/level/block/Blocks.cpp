#include "world/level/block/Blocks.h"
#include "core/Registry.h"
#include "core/registries/BuiltInRegistries.h"
#include "texheaders/blocks.h"

const Block* reg(const char* name, const Block* block) {
	BuiltInRegistries::BLOCK->register_(ResourceLocation(name), block);
	return block;
}

const Block* Blocks::GRASS = reg("grass_block", new Block({TileSetGroup::BLOCKS, blocks_grass_block_top_idx}));
