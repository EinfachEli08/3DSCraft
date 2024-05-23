#pragma once

#include <unordered_map>
#include <unordered_set>
#include <vector>

class Block;
class Item;
class TextureSlot;
class ResourceLocation;
class TextureMapping {
	public:
		static TextureMapping cube(Block block);
		static TextureMapping cube(ResourceLocation loc);
		static TextureMapping defaultTexture(Block block);
		static TextureMapping defaultTexture(ResourceLocation loc);
		static TextureMapping cross(Block block);
		static TextureMapping cross(ResourceLocation loc);
		static TextureMapping plant(Block block);
		static TextureMapping plant(ResourceLocation loc);
		static TextureMapping rail(Block block);
		static TextureMapping rail(ResourceLocation loc);
		static TextureMapping wool(Block block);
		static TextureMapping wool(ResourceLocation loc);
		static TextureMapping flowerbed(Block block);
		static TextureMapping stem(Block block);
		static TextureMapping attachedStem(Block block);
		static TextureMapping pattern(Block block);
		static TextureMapping fan(Block block);
		static TextureMapping crop(ResourceLocation loc);
		static TextureMapping pane(Block blockPane, Block blockSide);
		static TextureMapping singleSlot(TextureSlot slot, ResourceLocation loc);
		static TextureMapping column(Block block);
		static TextureMapping cubeTop(Block block);
		static TextureMapping pottedAzalea(Block block);
		static TextureMapping logColumn(Block block);
		static TextureMapping column(ResourceLocation locSide, ResourceLocation locEnd);
		static TextureMapping fance(Block block);
		static TextureMapping customParticle(Block block);
		static TextureMapping cubeBottomTop(Block block);
		static TextureMapping cubeBottopTopWithWall(Block block);
		static TextureMapping columnWithWall(Block block);
		static TextureMapping door(ResourceLocation locTop, ResourceLocation locBottom);
		static TextureMapping door(Block block);
		static TextureMapping particle(Block block);
		static TextureMapping particle(ResourceLocation loc);
		static TextureMapping fire0(Block block);
		static TextureMapping fire1(Block block);
		static TextureMapping lantern(Block block);
		static TextureMapping torch(Block block);
		static TextureMapping torch(ResourceLocation loc);
		static TextureMapping particleFromItem(Item item);
		static TextureMapping commandBlock(Block block);
		static TextureMapping orientalCube(Block block);
		static TextureMapping orientalCubeOnlyTop(Block block);
		static TextureMapping top(Block block);
		static TextureMapping craftingTable(Block blockSide, Block blockTop);
		static TextureMapping fletchingTable(Block blockSide, Block blockTop);
		static TextureMapping snifferEgg(const char* string);
		static TextureMapping campFire(Block block);
		static TextureMapping candleCake(Block block, bool isLit);
		static TextureMapping cauldron(ResourceLocation loc);
		static TextureMapping sculkShrieker(bool canSummon);
		static TextureMapping layer0(Item item);
		static TextureMapping layer0(Block block);
		static TextureMapping layered(ResourceLocation locLayer0, ResourceLocation locLayer1);
		static ResourceLocation getBlockTexture(Block block);
		static ResourceLocation getBlockTexture(Block block, const char* variant);
		static ResourceLocation getItemTexture(Item item, const char* variant);

		TextureMapping put(TextureSlot slot, ResourceLocation loc);
		TextureMapping copyAndUpdate(TextureSlot slot, ResourceLocation loc);
		TextureMapping copyForced(TextureSlot slot_0, TextureSlot slot_1);

		ResourceLocation get(TextureSlot slot);
		std::vector<TextureSlot> getForced() const { return std::vector<TextureSlot>(forcedSlots.begin(), forcedSlots.end()); }

	private:
		std::unordered_map<TextureSlot, ResourceLocation> slots;
		std::unordered_set<TextureSlot> forcedSlots;
};