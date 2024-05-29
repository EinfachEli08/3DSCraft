#pragma once

#include "core/BlockPos.h"
#include "util/Vector3.h"

constexpr static int SECTION_BITS	   = 4;
constexpr static int SECTION_SIZE	   = 16;
constexpr static int SECTION_MASK	   = 15;
constexpr static int SECTION_HALF_SIZE = 8;
constexpr static int SECTION_MAX_INDEX = 15;

class SectionPos {
		Vector3<int> vec;
		constexpr static int PACKED_X_LENGTH  = 22;
		constexpr static int PACKED_Y_LENGTH  = 20;
		constexpr static int PACKED_Z_LENGTH  = 22;
		constexpr static long PACKED_X_MASK	  = 4194303L;
		constexpr static long PACKED_Y_MASK	  = 1048575L;
		constexpr static long PACKED_Z_MASK	  = 4194303L;
		constexpr static int Y_OFFSET		  = 0;
		constexpr static int Z_OFFSET		  = 20;
		constexpr static int X_OFFSET		  = 42;
		constexpr static int RELATIVE_X_SHIFT = 8;
		constexpr static int RELATIVE_Y_SHIFT = 0;
		constexpr static int RELATIVE_Z_SHIFT = 4;

	public:
		SectionPos(int x, int y, int z) : vec(x, y, z) {}
		SectionPos(BlockPos* blockPos);
		SectionPos(ChunkPos* chunkPos, int y);
		SectionPos(const Vector3<int> vec) : vec(vec) {}
		SectionPos(long packX);

		static SectionPos* bottomNew();
		static long offset(long packPos, Direction::_ dir);
		static long offset(long packPos, int offX, int offY, int offZ);
		static int posToSectionCoord(double pos);
		static int blockToSectionCoord(int block);
		static int blockToSectionCoord(double block);
		static short sectionRelativePos(BlockPos* blockPos);
		static int sectionRelativeX(short pos);
		static int sectionRelativeY(short pos);
		static int sectionRelativeZ(short pos);
		static int sectionToBlockCoord(int pos);
		static int sectionToBlockCoord(int pos, int offset);
		static int x(long packPos);
		static int y(long packPos);
		static int z(long packPos);
		static long blockToSection(long packPos);
		static long getZeroNode(int x, int z);
		static long getZeroNode(long packPos);
		static long asLong(BlockPos* blockPos);
		static long asLong(int x, int y, int z);

		long asLong();
		int getX();
		int getY();
		int getZ();
		int relativeToBlockX(short pos);
		int relativeToBlockY(short pos);
		int relativeToBlockZ(short pos);
		int x();
		int y();
		int z();
		int minBlockX();
		int minBlockY();
		int minBlockZ();
		int maxBlockX();
		int maxBlockY();
		int maxBlockZ();
		BlockPos* relativeToBlockPos(short pos);
		BlockPos* origin();
		BlockPos* center();
		ChunkPos* chunk();

		SectionPos* offset(int x, int y, int z);
};