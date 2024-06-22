#include "client/renderer/texture/Stitcher.h"

#include "client/Exception.h"
#include "util/math/NumberUtils.h"

Stitcher::Region::Region(int x, int y, int width, int height) : originX(x), originY(y), width(width), height(height), holder(nullptr) {
}
Stitcher::Stitcher(int maxWidth, int maxHeight, int mipLevel)
	: maxWidth(maxWidth), maxHeight(maxHeight), mipLevel(mipLevel), storageX(0), storageY(0) {
}

int holderComparator(const void* ga, const void* gb) {
	const Stitcher::Holder* a = (const Stitcher::Holder*)ga;
	const Stitcher::Holder* b = (const Stitcher::Holder*)gb;
	if (a->height != b->height)
		return a->height > b->height;
	if (a->width != b->width)
		return a->width > b->width;
	return a->entry->name().getPath() < b->entry->name().getPath();
}

int Stitcher::getWidth() const {
	return storageX;
}

int Stitcher::getHeight() const {
	return storageY;
}

void Stitcher::registerSprite(Entry* entry) {
	Holder holder(entry, mipLevel);
	texturesToBeStitched.push_back(holder);
}

void Stitcher::stitch() {
	vector<Holder> list = texturesToBeStitched;
	list.sort(holderComparator);

	for (Holder& holder : list) {
		if (!addToStorage(holder)) {
			Crash("StitcherException: Could not fit holder into storage.");
		}
	}
}

void Stitcher::gatherSprites(void (*spriteLoader)(Entry*, int, int)) {
	for (Region& region : storage) {
		region.walk(spriteLoader);
	}
}

int Stitcher::smallestFittingMinTexel(int value, int mipLevel) {
	return ((value >> mipLevel) + ((value & ((1 << mipLevel) - 1)) == 0 ? 0 : 1)) << mipLevel;
}

bool Stitcher::addToStorage(Holder& holder) {
	for (Region& region : storage) {
		if (region.add(holder)) {
			return true;
		}
	}
	return expand(holder);
}

bool Stitcher::expand(Holder& holder) {
	int newWidth  = smallestPOT(storageX + holder.width);
	int newHeight = smallestPOT(storageY + holder.height);

	bool canExpandWidth	 = newWidth <= maxWidth;
	bool canExpandHeight = newHeight <= maxHeight;

	if (!canExpandWidth && !canExpandHeight) {
		return false;
	}

	bool shouldExpandWidth	= canExpandWidth && (newWidth != storageX || storageY == 0);
	bool shouldExpandHeight = canExpandHeight && (newHeight != storageY || storageX == 0);

	if (shouldExpandWidth && shouldExpandHeight) {
		shouldExpandWidth = storageX <= storageY;
	}

	if (shouldExpandWidth) {
		storage.push_back(Region(storageX, 0, newWidth - storageX, storageY));
		storageX = newWidth;
	} else {
		storage.push_back(Region(0, storageY, storageX, newHeight - storageY));
		storageY = newHeight;
	}

	return storage.back().add(holder);
}

Stitcher::Holder::Holder(Entry* entry, int mipLevel)
	: entry(entry),
	  width(Stitcher::smallestFittingMinTexel(entry->width(), mipLevel)),
	  height(Stitcher::smallestFittingMinTexel(entry->height(), mipLevel)) {
}

bool Stitcher::Region::add(Holder& holder) {
	if (this->holder != nullptr) {
		return false;
	}
	if (holder.width <= width && holder.height <= height) {
		if (holder.width == width && holder.height == height) {
			this->holder = &holder;
			return true;
		}

		if (subSlots.empty()) {
			subSlots.push_back(Region(originX, originY, holder.width, holder.height));

			int remainingWidth	= width - holder.width;
			int remainingHeight = height - holder.height;

			if (remainingWidth > 0 && remainingHeight > 0) {
				int maxWidth  = MAX(width, remainingWidth);
				int maxHeight = MAX(height, remainingHeight);

				if (maxWidth >= maxHeight) {
					subSlots.push_back(Region(originX, originY + holder.height, holder.width, remainingHeight));
					subSlots.push_back(Region(originX + holder.width, originY, remainingWidth, height));
				} else {
					subSlots.push_back(Region(originX + holder.width, originY, remainingWidth, holder.height));
					subSlots.push_back(Region(originX, originY + holder.height, width, remainingHeight));
				}
			} else if (remainingWidth == 0) {
				subSlots.push_back(Region(originX, originY + holder.height, holder.width, remainingHeight));
			} else if (remainingHeight == 0) {
				subSlots.push_back(Region(originX + holder.width, originY, remainingWidth, holder.height));
			}
		}

		for (Region& region : subSlots) {
			if (region.add(holder)) {
				return true;
			}
		}

		return false;
	}
	return false;
}

void Stitcher::Region::walk(void (*spriteLoader)(Entry*, int, int)) {
	if (holder != nullptr) {
		spriteLoader(holder->entry, originX, originY);
	} else {
		for (Region& region : subSlots) {
			region.walk(spriteLoader);
		}
	}
}
