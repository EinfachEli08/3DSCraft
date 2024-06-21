#pragma once

#include "resources/ResourceLocation.h"
#include <3ds/types.h>
#include <algorithm>
#include <string>
#include <vector/vector.h>

template <typename T>
class Stitcher {
	private:
		struct Entry;
		struct Holder;
		struct Region;
		using Comparator = bool (*)(const Holder&, const Holder&);

		static bool holderComparator(const Holder& a, const Holder& b);

		int mipLevel;
		vector<Holder> texturesToBeStitched;
		vector<Region> storage;
		int storageX;
		int storageY;
		int maxWidth;
		int maxHeight;

	public:
		Stitcher(int maxWidth, int maxHeight, int mipLevel);

		int getWidth() const;
		int getHeight() const;
		void registerSprite(T* entry);
		void stitch();
		void gatherSprites(void (*spriteLoader)(T*, int, int));

	private:
		static int smallestFittingMinTexel(int value, int mipLevel);
		bool addToStorage(Holder& holder);
		bool expand(Holder& holder);
		static int smallestEncompassingPowerOfTwo(int value);

		struct Holder {
				T* entry;
				int width;
				int height;

				Holder(T* entry, int mipLevel);
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
				void walk(void (*spriteLoader)(T*, int, int));
		};
		class Entry {
			public:
				virtual const char* name() const = 0;
		};
};
