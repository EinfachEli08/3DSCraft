#pragma once

#include <string>

class TextureSlot {
	private:
		std::string mId;
		const TextureSlot* mParent = nullptr;

		TextureSlot(const char* id, TextureSlot* parent) : mId(id), mParent(parent) {}
		TextureSlot(const char* id) : mId(id) {}

	public:
		const char* toString() { return std::string("#" + mId).c_str(); }

		const char* getId() { return mId.c_str(); }
		const TextureSlot* getParent() { return mParent; }

	public:
		static const TextureSlot* ALL;
		static const TextureSlot* TEXTURE;
		static const TextureSlot* PARTICLE;
		static const TextureSlot* END;
		static const TextureSlot* BOTTOM;
		static const TextureSlot* TOP;
		static const TextureSlot* FRONT;
		static const TextureSlot* BACK;
		static const TextureSlot* SIDE;
		static const TextureSlot* NORTH;
		static const TextureSlot* SOUTH;
		static const TextureSlot* EAST;
		static const TextureSlot* WEST;
		static const TextureSlot* UP;
		static const TextureSlot* DOWN;
		static const TextureSlot* CROSS;
		static const TextureSlot* PLANT;
		static const TextureSlot* WALL;
		static const TextureSlot* RAIL;
		static const TextureSlot* WOOL;
		static const TextureSlot* PATTERN;
		static const TextureSlot* PANE;
		static const TextureSlot* EDGE;
		static const TextureSlot* FAN;
		static const TextureSlot* STEM;
		static const TextureSlot* UPPER_STEM;
		static const TextureSlot* CROP;
		static const TextureSlot* DIRT;
		static const TextureSlot* FIRE;
		static const TextureSlot* LANTERN;
		static const TextureSlot* PLATFORM;
		static const TextureSlot* UNSTICKY;
		static const TextureSlot* TORCH;
		static const TextureSlot* LAYER0;
		static const TextureSlot* LAYER1;
		static const TextureSlot* LAYER2;
		static const TextureSlot* LIT_LOG;
		static const TextureSlot* CANDLE;
		static const TextureSlot* INSIDE;
		static const TextureSlot* CONTENT;
		static const TextureSlot* INNER_TOP;
		static const TextureSlot* FLOWERBED;
};