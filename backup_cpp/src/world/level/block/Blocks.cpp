#include "world/level/block/Blocks.h"
#include "core/Registry.h"
#include "core/registries/BuiltInRegistries.h"

const Block* reg(const char* name, const Block* block) {
	BuiltInRegistries::BLOCK->registr(ResourceLocation(name), block);
	return block;
}

const Block* Blocks::GRASS = reg("grass_block", new Block(/*{TileSetGroup::BLOCKS, blocks_grass_block_top_idx}*/));
