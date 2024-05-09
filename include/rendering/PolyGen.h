#pragma once

#include "entity/Player.h"
#include "rendering/VBOCache.h"
#include "rendering/VertexFmt.h"
#include "world/ChunkWorkerObjBase.h"
#include "world/Direction.h"
#include "world/WorkQueue.h"
#include "world/World.h"

#define MAX_FACES_PER_CLUSTER (CHUNK_SIZE * CHUNK_SIZE * CHUNK_SIZE / 2 * 6)

class PolyGen : public ChunkWorkerObjBase {
	public:
		PolyGen(World* world, Player* player);
		~PolyGen();

		void harvest();
		uint16_t floodFill(World* world, Chunk* chunk, Cluster* cluster, int x, int y, int z, Direction entrySide0, Direction entrySide1,
						   Direction entrySide2);

		void chunkFunction(WorkQueue* queue, WorkerItem item) override;

		inline Block fastBlockFetch(World* world, Chunk* chunk, Cluster* cluster, int x, int y, int z) {
			return (x < 0 || y < 0 || z < 0 || x >= CHUNK_SIZE || y >= CHUNK_SIZE || z >= CHUNK_SIZE)
					   ? world->getBlock((chunk->x * CHUNK_SIZE) + x, (cluster->y * CHUNK_SIZE) + y, (chunk->z * CHUNK_SIZE) + z)
					   : cluster->blocks[x][y][z];
		}
		inline uint8_t fastMetadataFetch(World* world, Chunk* chunk, Cluster* cluster, int x, int y, int z) {
			return (x < 0 || y < 0 || z < 0 || x >= CHUNK_SIZE || y >= CHUNK_SIZE || z >= CHUNK_SIZE)
					   ? world->getMetadata((chunk->x * CHUNK_SIZE) + x, (cluster->y * CHUNK_SIZE) + y, (chunk->z * CHUNK_SIZE) + z)
					   : (cluster->metadataLight[x][y][z] & 0xf);
		}
		inline void addFace(int x, int y, int z, Direction dir, Block block, uint8_t metadata, int ao, bool transparent) {
			if (x >= 0 && y >= 0 && z >= 0 && x < CHUNK_SIZE && y < CHUNK_SIZE && z < CHUNK_SIZE) {
				*faceBuffer[currentFace++] = (Face){x, y, z, dir, block, ao, metadata, transparent};
				transparentFaces += transparent;
			}
		}
		struct QueueElement {
				int8_t x, y, z;
		};
		struct VBOUpdate {
				VBO_Block vbo, transparentVBO;
				int x, y, z;
				size_t vertices, transparentVertices;
				uint8_t delay;
				uint16_t visibility;
		};
		struct Face {
				int8_t x, y, z;
				Direction direction;
				Block block;
				int8_t ao;
				uint8_t metadata;
				bool transparent;
		};

	private:
		World* world;
		Player* player;

		vec_t(VBOUpdate) * vboUpdates;
		vec_t(QueueElement) * floodFillQueue;

		int currentFace;
		int transparentFaces;
		uint8_t floodFillVisited[CHUNK_SIZE][CHUNK_SIZE][CHUNK_SIZE];

		Face* faceBuffer[MAX_FACES_PER_CLUSTER];
		LightLock* updateLock;
};
