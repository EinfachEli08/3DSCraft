#pragma once

#include "resources/ResourceLocation.h"
#include <3ds/types.h>
#include <algorithm>
#include <string>
#include <vector/vector.h>

class Stitcher {
	private:
		struct Entry;
		struct Holder;
		struct Region;
		using Comparator = bool (*)(const Holder&, const Holder&);

		int mipLevel;
		vector<Holder> texturesToBeStitched;
		vector<Region> storage;
		int storageX;
		int storageY;
		int maxWidth;
		int maxHeight;

		static int smallestFittingMinTexel(int value, int mipLevel);
		bool addToStorage(Holder& holder);
		bool expand(Holder& holder);

	public:
		Stitcher(int maxWidth, int maxHeight, int mipLevel);

		int getWidth() const;
		int getHeight() const;
		void registerSprite(Entry* entry);
		void stitch();
		void gatherSprites(void (*spriteLoader)(Entry*, int, int));

		struct Holder {
				Entry* entry;
				int width;
				int height;

				Holder(Entry* entry, int mipLevel);
		};

		struct Region {
				int originX;
				int originY;
				int width;
				int height;
				Holder* holder;
				vector<Region> subSlots;

				Region(int x, int y, int width, int height);
				bool add(Holder& holder);
				void walk(void (*spriteLoader)(Entry*, int, int));
		};
		class Entry {
			public:
				virtual u16 width() const = 0;

				virtual u16 height() const = 0;

				virtual ResourceLocation name() const = 0;
		};
};
