#include "world/level/saveddata/SuperChunk.h"

#include <miniz/miniz.h>
#include <stdlib.h>
#include <unistd.h>

#include "client/Exception.h"

static const int mSectorsize		   = 2048;
static const int mNodeDataPoolSize	   = 2048;
static const int mDecompressBufferSize = sizeof(Chunk) * 2;
static const int mFileBufferSize	   = sizeof(Chunk) * 2;
mpack_node_data_t* mNodeDataPool	   = nullptr;
char* mFileBuffer					   = nullptr;
char* mDecompressBuffer				   = nullptr;

void SuperChunk::poolsInit() {
	mNodeDataPool	  = new mpack_node_data_t[sizeof(mpack_node_data_t) * mNodeDataPoolSize];
	mFileBuffer		  = new char[mFileBufferSize];	// 4kb
	mDecompressBuffer = new char[mDecompressBufferSize];
}
void SuperChunk::poolsDeinit() {
	free(mNodeDataPool);
	free(mDecompressBuffer);
	free(mFileBuffer);
}

SuperChunk::SuperChunk(int x, int z) : mPosX(x), mPosZ(z) {
	char buffer[256];
	sprintf(buffer, "superchunks/s.%d.%d.mp", x, z);

	if (access(buffer, F_OK) != -1) {
		int size = 0;
		{
			FILE* f = fopen(buffer, "rb");
			fseek(f, 0, SEEK_END);
			size = ftell(f);
			fseek(f, 0, SEEK_SET);
			fread(mFileBuffer, sizeof(char), size, f);
			fclose(f);
		}

		mpack_tree_t tree;
		mpack_tree_init_pool(&tree, mFileBuffer, size, mNodeDataPool, mNodeDataPoolSize);
		mpack_node_t root = mpack_tree_root(&tree);

		mpack_node_t chunkIndices = mpack_node_map_cstr(root, "chunkIndices");
		for (int i = 0; i < SUPERCHUNK_SIZE * SUPERCHUNK_SIZE; i++) {
			mpack_node_t chunkInfo							= mpack_node_array_at(chunkIndices, i);
			mGrid[i % SUPERCHUNK_SIZE][i / SUPERCHUNK_SIZE] = (ChunkInfo){mpack_node_u32(mpack_node_map_cstr(chunkInfo, "position")),
																		  mpack_node_u32(mpack_node_map_cstr(chunkInfo, "compressedSize")),
																		  mpack_node_u32(mpack_node_map_cstr(chunkInfo, "actualSize")),
																		  mpack_node_u8(mpack_node_map_cstr(chunkInfo, "blockSize")),
																		  mpack_node_u32(mpack_node_map_cstr(chunkInfo, "revision"))};

			{
				ChunkInfo chunkInfo = mGrid[i % SUPERCHUNK_SIZE][i / SUPERCHUNK_SIZE];
				if (chunkInfo.actualSize > 0) {
					while (chunkInfo.position + chunkInfo.blockSize > mSectors.size()) {
						mSectors.push_back(false);
					}
					for (int j = 0; j < chunkInfo.blockSize; j++)
						mSectors.data()[chunkInfo.position + j] = true;
				}
			}
		}

		mpack_error_t err = mpack_tree_destroy(&tree);
		if (err != mpack_ok) {
			Crash("MPack error %d while loading superchunk manifest %d %d", err, x, z);
		}
	} else {
		memset(mGrid, 0x0, sizeof(mGrid));
	}

	sprintf(buffer, "superchunks/s.%d.%d.dat", x, z);
	mDataFile = fopen(buffer, "r+b");
	if (mDataFile == nullptr)
		mDataFile = fopen(buffer, "w+b");
}
SuperChunk::~SuperChunk() {
	saveIndex();
	fclose(mDataFile);
}

void SuperChunk::saveIndex() {
	char buffer[256];
	sprintf(buffer, "superchunks/s.%d.%d.mp", mPosX, mPosZ);

	mpack_writer_t writer;
	mpack_writer_init_file(&writer, buffer);

	mpack_start_map(&writer, 1);

	mpack_write_cstr(&writer, "chunkIndices");

	mpack_start_array(&writer, SUPERCHUNK_SIZE * SUPERCHUNK_SIZE);
	for (int j = 0; j < SUPERCHUNK_SIZE; j++) {
		for (int i = 0; i < SUPERCHUNK_SIZE; i++) {
			ChunkInfo chunkInfo = mGrid[i][j];
			mpack_start_map(&writer, 5);

			mpack_write_cstr(&writer, "position");
			mpack_write_u32(&writer, chunkInfo.position);
			mpack_write_cstr(&writer, "compressedSize");
			mpack_write_u32(&writer, chunkInfo.compressedSize);
			mpack_write_cstr(&writer, "actualSize");
			mpack_write_u32(&writer, chunkInfo.actualSize);
			mpack_write_cstr(&writer, "blockSize");
			mpack_write_u8(&writer, chunkInfo.blockSize);
			mpack_write_cstr(&writer, "revision");
			mpack_write_u32(&writer, chunkInfo.revision);

			mpack_finish_map(&writer);
		}
	}
	mpack_finish_array(&writer);

	mpack_finish_map(&writer);

	mpack_error_t err = mpack_writer_destroy(&writer);
	if (err != mpack_ok) {
		Crash("Mpack error %d while saving superchunk index %d %d", err, mPosX, mPosZ);
	}
}

u32 SuperChunk::reserveSectors(int amount) {
	int amountFulfilled			 = 0;
	int startValue				 = -1;
	size_t sizeSuperChunkSectors = mSectors.size();
	for (size_t i = 0; i < sizeSuperChunkSectors; i++) {
		if (!mSectors.data()[i]) {
			if (startValue == -1)
				startValue = i;
			amountFulfilled++;
		} else {
			amountFulfilled = 0;
			startValue		= -1;
		}
		if (amountFulfilled == amount) {
			for (int i = 0; i < amount; i++)
				mSectors.data()[startValue + i] = true;
			return startValue;
		}
	}
	for (int i = 0; i < amount; i++)
		mSectors.push_back(true);
	return mSectors.size() - amount;
}
void SuperChunk::freeSectors(u32 address, u8 size) {
	for (size_t i = 0; i < size; i++) {
		mSectors.data()[address + i] = false;
	}
}

void SuperChunk::chunkSave(Chunk* chunk) {
	int x = ChunkToLocalSuperChunkCoord(chunk->x);
	int z = ChunkToLocalSuperChunkCoord(chunk->z);

	if (mGrid[x][z].revision != chunk->revision) {
		mpack_writer_t writer;
		mpack_writer_init(&writer, mDecompressBuffer, mDecompressBufferSize);

		mpack_start_map(&writer, 3);

		mpack_write_cstr(&writer, "clusters");
		mpack_start_array(&writer, CLUSTER_PER_CHUNK);
		for (int i = 0; i < CLUSTER_PER_CHUNK; i++) {
			bool empty = Cluster_IsEmpty(&chunk->clusters[i]);

			mpack_start_map(&writer, empty ? 2 : 4);

			if (!empty) {
				mpack_write_cstr(&writer, "blocks");
				mpack_write_bin(&writer, (char*)chunk->clusters[i].blocks, sizeof(chunk->clusters[i].blocks));
				mpack_write_cstr(&writer, "metadataLight");
				mpack_write_bin(&writer, (char*)chunk->clusters[i].metadataLight, sizeof(chunk->clusters[i].metadataLight));
			}

			mpack_write_cstr(&writer, "revision");
			mpack_write_u32(&writer, chunk->clusters[i].revision);

			mpack_write_cstr(&writer, "empty");
			mpack_write_bool(&writer, empty);

			mpack_finish_map(&writer);
		}
		mpack_finish_array(&writer);

		mpack_write_cstr(&writer, "genProgress");
		mpack_write_int(&writer, chunk->genProgress);

		mpack_write_cstr(&writer, "heightmap");
		mpack_write_bin(&writer, (char*)chunk->heightmap, sizeof(chunk->heightmap));

		mpack_finish_map(&writer);
		mpack_error_t err = mpack_writer_destroy(&writer);
		if (err != mpack_ok) {
			Crash("MPack error %d while saving chunk(%d, %d) to superchunk", err, chunk->x, chunk->z);
		}

		size_t uncompressedSize = mpack_writer_buffer_used(&writer);
		mz_ulong compressedSize = mFileBufferSize;
		if (compress((uint8_t*)mFileBuffer, &compressedSize, (uint8_t*)mDecompressBuffer, uncompressedSize) == Z_OK) {
			size_t blockSize = compressedSize / mSectorsize + 1;

			if (mGrid[x][z].actualSize > 0)
				freeSectors(mGrid[x][z].position, mGrid[x][z].blockSize);

			size_t address = reserveSectors(blockSize);

			fseek(mDataFile, address * mSectorsize, SEEK_SET);
			if (fwrite(mFileBuffer, compressedSize, 1, mDataFile) != 1)
				Crash("Couldn't write complete chunk data to file");

			mGrid[x][z] = (ChunkInfo){address, compressedSize, uncompressedSize, blockSize, chunk->revision};
		}
	}
}

void SuperChunk::chunkLoad(Chunk* chunk) {
	int x				= ChunkToLocalSuperChunkCoord(chunk->x);
	int z				= ChunkToLocalSuperChunkCoord(chunk->z);
	ChunkInfo chunkInfo = mGrid[x][z];
	if (chunkInfo.actualSize > 0) {
		fseek(mDataFile, chunkInfo.position * mSectorsize, SEEK_SET);
		if (fread(mFileBuffer, chunkInfo.compressedSize, 1, mDataFile) != 1)
			Crash("Read chunk data size isn't equal to the expected size");
		mz_ulong uncompressedSize = mDecompressBufferSize;

		if (uncompress((uint8_t*)mDecompressBuffer, &uncompressedSize, (uint8_t*)mFileBuffer, chunkInfo.compressedSize) == Z_OK) {
			mpack_tree_t tree;
			mpack_tree_init_pool(&tree, mDecompressBuffer, uncompressedSize, mNodeDataPool, mNodeDataPoolSize);
			mpack_node_t root = mpack_tree_root(&tree);

			mpack_node_t clusters = mpack_node_map_cstr(root, "clusters");
			for (int i = 0; i < CLUSTER_PER_CHUNK; i++) {
				mpack_node_t cluster = mpack_node_array_at(clusters, i);

				chunk->clusters[i].revision = mpack_node_u32(mpack_node_map_cstr(cluster, "revision"));

				mpack_node_t emptyNode = mpack_node_map_cstr_optional(cluster, "empty");
				if (mpack_node_type(emptyNode) != mpack_type_nil) {
					chunk->clusters[i].emptyRevision = chunk->clusters[i].revision;
					chunk->clusters[i].empty		 = mpack_node_bool(emptyNode);
				} else {
					chunk->clusters[i].emptyRevision = 0;
					chunk->clusters[i].empty		 = false;
				}

				mpack_node_t blocksNode = mpack_node_map_cstr_optional(cluster, "blocks");
				if (mpack_node_type(blocksNode) == mpack_type_bin)	// preserve savedata, in case of a wrong empty flag
					memcpy(chunk->clusters[i].blocks, mpack_node_data(blocksNode), sizeof(chunk->clusters[i].blocks));
				mpack_node_t metadataNode = mpack_node_map_cstr_optional(cluster, "metadataLight");
				if (mpack_node_type(metadataNode) == mpack_type_bin)
					memcpy(chunk->clusters[i].metadataLight, mpack_node_data(metadataNode), sizeof(chunk->clusters[i].metadataLight));
			}

			chunk->genProgress = (ChunkGenProgress)mpack_node_int(mpack_node_map_cstr(root, "genProgress"));

			mpack_node_t heightmapNode = mpack_node_map_cstr(root, "heightmap");
			if (mpack_node_type(heightmapNode) != mpack_type_nil) {
				memcpy(chunk->heightmap, mpack_node_data(heightmapNode), sizeof(chunk->heightmap));
				chunk->heightmapRevision = chunkInfo.revision;
			} else
				chunk->heightmapRevision = 0;

			mpack_error_t err = mpack_tree_destroy(&tree);
			if (err != mpack_ok) {
				Crash("MPack error %d while loading chunk(%d %d) from superchunk", err, chunk->x, chunk->z);
			}

			chunk->revision = chunkInfo.revision;
		}
	}
}