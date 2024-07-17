#pragma once

#include "core/SectionPos.h"

class LevelHeightAccessor {
		virtual int getHeight()			= 0;
		virtual int getMinBuildHeight() = 0;

		virtual int getMaxBuildHeight() { return getMinBuildHeight() + getHeight(); }
		virtual int getMinSection() { return SectionPos::blockToSectionCoord(getMinBuildHeight()); }
		virtual int getMaxSection() { return SectionPos::blockToSectionCoord(getMaxBuildHeight() - 1) + 1; }
		virtual int getSectionsCount() { return getMaxSection() - getMinSection(); }
		virtual int getSectionIndexFromSectionY(int y) { return y - getMinSection(); }
		virtual int getSectionYFromSectionIndex(int index) { return index + getMinSection(); }
		virtual int getSectionIndex(int v) { return getSectionIndexFromSectionY(SectionPos::blockToSectionCoord(v)); }
		virtual bool isOutsideBuildHeight(int height) { return height < getMinBuildHeight() || height >= getMaxBuildHeight(); }
		virtual bool isOutsideBuildHeight(BlockPos* blockPos) { return isOutsideBuildHeight(blockPos->getY()); }

		virtual LevelHeightAccessor* create(const int height, const int minBuildHeight) = 0;
};
