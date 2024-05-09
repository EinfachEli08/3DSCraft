#include <rendering/PolyGen.h>

#include <3ds.h>
#include <stdbool.h>
#include <vec/vec.h>

#include <gui/DebugUI.h>

const WorldVertex cube_sides_lut[] = {
	// Fourth face (MX)
	// First triangle
	{{0, 0, 0}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	{{0, 0, 1}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	{{0, 1, 1}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	// Second triangle
	{{0, 1, 1}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	{{0, 1, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	{{0, 0, 0}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	// Third face (PX)
	// First triangle
	{{1, 0, 0}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	{{1, 1, 0}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	{{1, 1, 1}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	// Second triangle
	{{1, 1, 1}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	{{1, 0, 1}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	{{1, 0, 0}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	// Sixth face (MY)
	// First triangle
	{{0, 0, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	{{1, 0, 0}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	{{1, 0, 1}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	// Second triangle
	{{1, 0, 1}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	{{0, 0, 1}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	{{0, 0, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	// Fifth face (PY)
	// First triangle
	{{0, 1, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	{{0, 1, 1}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	{{1, 1, 1}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	// Second triangle
	{{1, 1, 1}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	{{1, 1, 0}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	{{0, 1, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	// Second face (MZ)
	// First triangle
	{{0, 0, 0}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	{{0, 1, 0}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	{{1, 1, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	// Second triangle
	{{1, 1, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	{{1, 0, 0}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	{{0, 0, 0}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	// First face (PZ)
	// First triangle
	{{0, 0, 1}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	{{1, 0, 1}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	{{1, 1, 1}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	// Second triangle
	{{1, 1, 1}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	{{0, 1, 1}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	{{0, 0, 1}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
};

PolyGen::PolyGen(World* _world, Player* _player) : player(_player), world(_world) {
	VBOCache_Init();
	vec_init(floodFillQueue);
	LightLock_Init(updateLock);
	vec_init(vboUpdates);
}
PolyGen::~PolyGen() {
	vec_deinit(vboUpdates);
	VBOCache_Deinit();
	vec_deinit(floodFillQueue);
}

void PolyGen::harvest() {
	if (LightLock_TryLock(updateLock) == 0) {
		DebugUI_Text("VBOUpdates %d", vboUpdates->length);
		if (vboUpdates->length > 0) {
			if (vboUpdates->data[0].delay++ > 2)
				while (vboUpdates->length > 0) {
					VBOUpdate update = vec_pop(vboUpdates);

					Chunk* chunk = World_GetChunk(world, update.x, update.z);
					if (chunk) {
						if (chunk->clusters[update.y].vertices > 0) VBO_Free(chunk->clusters[update.y].vbo);
						if (chunk->clusters[update.y].transparentVertices > 0) VBO_Free(chunk->clusters[update.y].transparentVBO);
						chunk->clusters[update.y].vbo				  = update.vbo;
						chunk->clusters[update.y].vertices			  = update.vertices;
						chunk->clusters[update.y].transparentVBO	  = update.transparentVBO;
						chunk->clusters[update.y].transparentVertices = update.transparentVertices;
						chunk->clusters[update.y].seeThrough		  = update.visibility;
					}
				}
		}

		LightLock_Unlock(updateLock);
	}
}

uint16_t PolyGen::floodFill(World* world, Chunk* chunk, Cluster* cluster, int x, int y, int z, Direction entrySide0, Direction entrySide1,
							Direction entrySide2) {
	if (floodFillVisited[x][y][z] & 1) return 0;
	uint8_t exitPoints[6] = {false};
	if (entrySide0 != Direction_Invalid) exitPoints[entrySide0] = true;
	if (entrySide1 != Direction_Invalid) exitPoints[entrySide1] = true;
	if (entrySide2 != Direction_Invalid) exitPoints[entrySide2] = true;
	vec_clear(floodFillQueue);
	vec_push(floodFillQueue, ((QueueElement){x, y, z}));

	while (floodFillQueue->length > 0) {
		QueueElement item = vec_pop(floodFillQueue);

		for (int i = 0; i < 6; i++) {
			const int* offset = DirectionToOffset[i];
			int x = item.x + offset[0], y = item.y + offset[1], z = item.z + offset[2];
			if (x < 0 || y < 0 || z < 0 || x >= CHUNK_SIZE || y >= CHUNK_SIZE || z >= CHUNK_SIZE) {
				exitPoints[i] = true;
			} else {
				if (!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf) && !(floodFillVisited[x][y][z] & 1)) {
					floodFillVisited[x][y][z] |= 1;
					vec_push(floodFillQueue, ((QueueElement){x, y, z}));
				}
				if ((cluster->blocks[item.x][item.y][item.z] == Block_Air ||
					 Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf)) &&
					cluster->blocks[x][y][z] != Block_Air) {
					addFace(x, y, z, DirectionOpposite[i], cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf, 0,
							!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf));
				}
			}
		}
	}
	uint16_t visiblity = 0;
	for (int i = 0; i < 6; i++)
		if (exitPoints[i])
			for (int j = 0; j < 6; j++)
				if (i != j && exitPoints[j]) visiblity |= ChunkSeeThrough(i, j);
	return visiblity;
}

void PolyGen::chunkFunction(WorkQueue* queue, WorkerItem item) {
	for (int i = 0; i < CLUSTER_PER_CHUNK; i++) {
		Cluster* cluster = &item.chunk->clusters[i];

		if (cluster->revision != cluster->vboRevision || cluster->forceVBOUpdate) {
			cluster->vboRevision	= cluster->revision;
			cluster->forceVBOUpdate = false;

			currentFace		 = 0;
			transparentFaces = 0;

			uint16_t visibility = 0;

			memset(floodFillVisited, 0, sizeof(floodFillVisited));
			for (int x = 0; x < CHUNK_SIZE; x += CHUNK_SIZE - 1) {
				Direction xDir = !x ? Direction_West : Direction_East;
				for (int z = 0; z < CHUNK_SIZE; z++) {
					Direction zDir = Direction_Invalid;
					if (z == 0)
						zDir = Direction_North;
					else if (z == CHUNK_SIZE - 1)
						zDir = Direction_South;
					for (int y = 0; y < CHUNK_SIZE; y++) {
						Direction yDir = Direction_Invalid;
						if (y == 0)
							yDir = Direction_Bottom;
						else if (y == CHUNK_SIZE - 1)
							yDir = Direction_Top;

						if (!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf))
							visibility |= floodFill(world, item.chunk, cluster, x, y, z, xDir, yDir, zDir);
						Block block	 = fastBlockFetch(world, item.chunk, cluster, x + (!x ? -1 : 1), y, z);
						uint8_t meta = fastMetadataFetch(world, item.chunk, cluster, x + (!x ? -1 : 1), y, z);
						if (!Block_Opaque(block, meta) && cluster->blocks[x][y][z] != Block_Air) {
							addFace(x, y, z, xDir, cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf, 0,
									!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf));
						}
					}
				}
			}
			for (int y = 0; y < CHUNK_SIZE; y += CHUNK_SIZE - 1) {
				Direction yDir = !y ? Direction_Bottom : Direction_Top;
				for (int x = 0; x < CHUNK_SIZE; x++) {
					Direction xDir = Direction_Invalid;
					if (x == 0)
						xDir = Direction_West;
					else if (x == CHUNK_SIZE - 1)
						xDir = Direction_East;
					for (int z = 0; z < CHUNK_SIZE; z++) {
						Direction zDir = Direction_Invalid;
						if (z == 0)
							zDir = Direction_South;
						else if (z == CHUNK_SIZE - 1)
							zDir = Direction_North;
						if (!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf))
							visibility |= floodFill(world, item.chunk, cluster, x, y, z, xDir, yDir, zDir);
						Block block	 = fastBlockFetch(world, item.chunk, cluster, x, y + (!y ? -1 : 1), z);
						uint8_t meta = fastMetadataFetch(world, item.chunk, cluster, x, y + (!y ? -1 : 1), z);
						if (!Block_Opaque(block, meta) && cluster->blocks[x][y][z] != Block_Air) {
							addFace(x, y, z, yDir, cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf, 0,
									!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf));
						}
					}
				}
			}
			for (int z = 0; z < CHUNK_SIZE; z += CHUNK_SIZE - 1) {
				Direction zDir = !z ? Direction_North : Direction_South;
				for (int x = 0; x < CHUNK_SIZE; x++) {
					Direction xDir = Direction_Invalid;
					if (x == 0)
						xDir = Direction_West;
					else if (x == CHUNK_SIZE - 1)
						xDir = Direction_East;
					for (int y = 0; y < CHUNK_SIZE; y++) {
						Direction yDir = Direction_Invalid;
						if (y == 0)
							yDir = Direction_Bottom;
						else if (y == CHUNK_SIZE - 1)
							yDir = Direction_Top;
						if (!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf))
							visibility |= floodFill(world, item.chunk, cluster, x, y, z, xDir, yDir, zDir);
						Block block	 = fastBlockFetch(world, item.chunk, cluster, x, y, z + (!z ? -1 : 1));
						uint8_t meta = fastMetadataFetch(world, item.chunk, cluster, x, y, z + (!z ? -1 : 1));
						if (!Block_Opaque(block, cluster->metadataLight[x][y][z] & 0xf) && cluster->blocks[x][y][z] != Block_Air) {
							addFace(x, y, z, zDir, cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf, 0,
									!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf));
						}
					}
				}
			}
			int px = FastFloor(player->position.x);
			int py = FastFloor(player->position.y);
			int pz = FastFloor(player->position.z);
			if (WorldToChunkCoord(px) == item.chunk->x && WorldToChunkCoord(pz) == item.chunk->z && WorldToChunkCoord(py) == i) {
				floodFill(world, item.chunk, cluster, WorldToLocalCoord(px), WorldToLocalCoord(py), WorldToLocalCoord(pz),
						  Direction_Invalid, Direction_Invalid, Direction_Invalid);
			}

			int transparentVertices = transparentFaces * 6;
			int verticesTotal		= (currentFace * 6) - transparentVertices;
			VBOUpdate update;

			if (currentFace) {
				VBO_Block memBlock;
				if (verticesTotal > 0) memBlock = VBO_Alloc(verticesTotal * sizeof(WorldVertex));
				VBO_Block transparentMem;
				if (transparentFaces > 0) transparentMem = VBO_Alloc(transparentVertices * sizeof(WorldVertex));

				WorldVertex* opaqueData		 = (WorldVertex*)memBlock.memory;
				WorldVertex* transparentData = (WorldVertex*)transparentMem.memory;
				for (int j = 0; j < currentFace; j++) {
					Face* face = faceBuffer[j];

					int offsetX = face->x + item.chunk->x * CHUNK_SIZE;
					int offsetZ = face->z + item.chunk->z * CHUNK_SIZE;
					int offsetY = face->y + i * CHUNK_SIZE;

					int16_t iconUV[2];
					Block_GetTexture(face->block, face->direction, face->metadata, iconUV);

					WorldVertex* data = face->transparent ? transparentData : opaqueData;
					memcpy(data, &cube_sides_lut[face->direction * 6], sizeof(WorldVertex) * 6);

#define oneDivIconsPerRow (32768 / 8)
#define halfTexel (6)

					uint8_t color[3];
					Block_GetColor(face->block, face->metadata, face->direction, color);

					for (int k = 0; k < 6; k++) {
						data[k].xyz[0] += offsetX;
						data[k].xyz[1] += offsetY;
						data[k].xyz[2] += offsetZ;
						data[k].uv[0] = (data[k].uv[0] == 1 ? (oneDivIconsPerRow - 1) : 1) + iconUV[0];
						data[k].uv[1] = (data[k].uv[1] == 1 ? (oneDivIconsPerRow - 1) : 1) + iconUV[1];

						data[k].rgb[0] = color[0];
						data[k].rgb[1] = color[1];
						data[k].rgb[2] = color[2];
					}
					if (face->transparent)
						transparentData += 6;
					else
						opaqueData += 6;
				}

				update.vbo			  = memBlock;
				update.transparentVBO = transparentMem;
			}

			update.x				   = item.chunk->x;
			update.y				   = i;
			update.z				   = item.chunk->z;
			update.vertices			   = verticesTotal;
			update.delay			   = 0;
			update.visibility		   = visibility;
			update.transparentVertices = transparentVertices;

			LightLock_Lock(updateLock);
			vec_push(vboUpdates, update);
			LightLock_Unlock(updateLock);
		}
	}
	item.chunk->displayRevision = item.chunk->revision;
	item.chunk->forceVBOUpdate	= false;
}