#pragma once

#include <string>

#include "core/BlockPos.h"
#include "core/SectionPos.h"

class ChunkPos {
		constexpr static u16 SAFETY_MARGIN = 1056;
		constexpr static u32 COORD_MASK	   = 4294967295L;
		constexpr static u8 REGION_BITS	   = 5;
		constexpr static u32 HASH_A		   = 1664525;
		constexpr static u32 HASH_C		   = 1013904223;
		constexpr static s32 HASH_Z_XOR	   = -559038737;

	public:
		constexpr static u8 REGION_SIZE		 = 32;
		constexpr static u8 REGION_MAX_INDEX = 31;
		const int x, z;

		ChunkPos(int x, int z) : x(x), z(z) {}
		ChunkPos(BlockPos* blockPos)
			: x(SectionPos::blockToSectionCoord(blockPos->getX())), z(SectionPos::blockToSectionCoord(blockPos->getZ())) {}
		ChunkPos(long packPos) : x((int)packPos), z((int)(packPos >> REGION_SIZE)) {}

		bool operator==(const ChunkPos* other);
		long toLong();
		int hashCode();
		int getMiddleBlockX();
		int getMiddleBlockZ();
		int getMinBlockX();
		int getMinBlockZ();
		int getMaxBlockX();
		int getMaxBlockZ();
		int getRegionX();
		int getRegionZ();
		int getRegionLocalX();
		int getRegionLocalZ();
		int getBlockX(int section);
		int getBlockZ(int section);
		int getChessboardDistance(ChunkPos* other);

		BlockPos* getBlockAt(int x, int y, int z);
		BlockPos* getMiddleBlockPosition(int y);
		BlockPos* getWorldPosition();
		std::string toString();

		static long asLong(int x, int z);
		static long asLong(BlockPos* blockPos);
		static const ChunkPos* ZERO;
		static const long INVALID_CHUNK_POS;
		static ChunkPos* minFromRegion(int x, int z);
		static ChunkPos* maxFromRegion(int x, int z);
		static int getX(long packPos);
		static int getZ(long packPos);
		static int hash(int x, int z);
};