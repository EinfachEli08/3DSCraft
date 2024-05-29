#include "world/level/ChunkPos.h"
#include "util/NumberUtils.h"

const ChunkPos* ChunkPos::ZERO		   = new ChunkPos(0, 0);
const long ChunkPos::INVALID_CHUNK_POS = ChunkPos::asLong(1875066, 1875066);

long ChunkPos::asLong(int x, int z) {
	return (long)x & COORD_MASK | ((long)z & COORD_MASK) << REGION_SIZE;
}
long ChunkPos::asLong(BlockPos* blockPos) {
	return asLong(SectionPos::blockToSectionCoord(blockPos->getX()), SectionPos::blockToSectionCoord(blockPos->getZ()));
}
ChunkPos* ChunkPos::minFromRegion(int x, int z) {
	return new ChunkPos(x << REGION_BITS, z << REGION_BITS);
}
ChunkPos* ChunkPos::maxFromRegion(int x, int z) {
	return new ChunkPos((x << REGION_BITS) + REGION_MAX_INDEX, (z << REGION_BITS) + REGION_MAX_INDEX);
}
int ChunkPos::getX(long packPos) {
	return (int)(packPos & COORD_MASK);
}
int ChunkPos::getZ(long packPos) {
	return (int)((packPos >> REGION_SIZE) & COORD_MASK);
}
int ChunkPos::hash(int x, int z) {
	int i = HASH_A * +HASH_C;
	int j = HASH_A * (z ^ HASH_Z_XOR) + HASH_C;
	return i ^ j;
}
long ChunkPos::toLong() {
	return asLong(x, z);
}
int ChunkPos::hashCode() {
	return hash(x, z);
}
bool ChunkPos::operator==(const ChunkPos* other) {
	if (this == other)
		return true;
	else
		return x == other->x && z == other->z;
}
int ChunkPos::getMiddleBlockX() {
	return getBlockX(SECTION_HALF_SIZE);
}
int ChunkPos::getMiddleBlockZ() {
	return getBlockZ(SECTION_HALF_SIZE);
}
int ChunkPos::getMinBlockX() {
	return SectionPos::sectionToBlockCoord(x);
}
int ChunkPos::getMinBlockZ() {
	return SectionPos::sectionToBlockCoord(z);
}
int ChunkPos::getMaxBlockX() {
	return getBlockX(SECTION_MASK);
}
int ChunkPos::getMaxBlockZ() {
	return getBlockZ(SECTION_MASK);
}
int ChunkPos::getRegionX() {
	return x >> REGION_BITS;
}
int ChunkPos::getRegionZ() {
	return z >> REGION_BITS;
}
int ChunkPos::getRegionLocalX() {
	return x & REGION_MAX_INDEX;
}
int ChunkPos::getRegionLocalZ() {
	return z & REGION_MAX_INDEX;
}
BlockPos* ChunkPos::getBlockAt(int x, int y, int z) {
	return new BlockPos(getBlockX(x), y, getBlockZ(z));
}
int ChunkPos::getBlockX(int n) {
	SectionPos::sectionToBlockCoord(x, n);
}
int ChunkPos::getBlockZ(int n) {
	SectionPos::sectionToBlockCoord(z, n);
}
BlockPos* ChunkPos::getMiddleBlockPosition(int y) {
	return new BlockPos(getMiddleBlockX(), y, getMiddleBlockZ());
}
std::string ChunkPos::toString() {
	return "[" + std::to_string(x) + "," + std::to_string(z) + "]";
}
BlockPos* ChunkPos::getWorldPosition() {
	return new BlockPos(getMinBlockX(), 0, getMinBlockZ());
}
int ChunkPos::getChessboardDistance(ChunkPos* other) {
	MAX(ABS(x - other->x), ABS(z - other->z));
}