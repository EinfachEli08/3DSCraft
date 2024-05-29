#include "core/BlockPos.h"

constexpr int NUM_X_BITS		   = 1 + log2(30000000);
constexpr int NUM_Z_BITS		   = NUM_X_BITS;
constexpr int NUM_Y_BITS		   = 64 - NUM_X_BITS - NUM_Z_BITS;
constexpr long X_MASK			   = (1L << NUM_X_BITS) - 1L;
constexpr long Y_MASK			   = (1L << NUM_Y_BITS) - 1L;
constexpr long Z_MASK			   = (1L << NUM_Z_BITS) - 1L;
constexpr int INVERSE_START_BITS_Z = NUM_Y_BITS;
constexpr int INVERSE_START_BITS_X = NUM_Y_BITS + NUM_Z_BITS;

const BlockPos* BlockPos::ZERO = new BlockPos(0, 0, 0);

int BlockPos::getX() {
	return pos.x;
}
int BlockPos::getY() {
	return pos.y;
}
int BlockPos::getZ() {
	return pos.z;
}