#include "client/renderer/PolyGen.h"

#include <3ds.h>
#include <stdbool.h>

#include "client/gui/DebugUI.h"
#include "client/renderer/CubeSidesTable.h"

PolyGen::PolyGen(World* _world, Player* _player) : player(_player), world(_world) {
	VBOCache_Init();
	LightLock_Init(&updateLock);
}
PolyGen::~PolyGen() {
	VBOCache_Deinit();
}

void PolyGen::harvest() {
	if (LightLock_TryLock(&updateLock) == 0) {
		DebugUI_Text("VBOUpdates %d", vboUpdates.size());
		if (vboUpdates.size() > 0) {
			if (vboUpdates[0].delay++ > 2)
				while (vboUpdates.size() > 0) {
					VBOUpdate update = vboUpdates.back();
					vboUpdates.pop_back();

					Chunk* chunk = world->getChunk(update.x, update.z);
					if (chunk) {
						if (chunk->clusters[update.y].vertices > 0)
							VBO_Free(chunk->clusters[update.y].vbo);
						if (chunk->clusters[update.y].transparentVertices > 0)
							VBO_Free(chunk->clusters[update.y].transparentVBO);
						chunk->clusters[update.y].vbo				  = update.vbo;
						chunk->clusters[update.y].vertices			  = update.vertices;
						chunk->clusters[update.y].transparentVBO	  = update.transparentVBO;
						chunk->clusters[update.y].transparentVertices = update.transparentVertices;
						chunk->clusters[update.y].seeThrough		  = update.visibility;
					}
				}
		}

		LightLock_Unlock(&updateLock);
	}
}

u16 PolyGen::floodFill(World* world, Chunk* chunk, Cluster* cluster, int x, int y, int z, Direction::_ entrySide0, Direction::_ entrySide1,
					   Direction::_ entrySide2) {
	if (floodFillVisited[x][y][z] & 1)
		return 0;
	u8 exitPoints[6] = {false};
	if (entrySide0 != Direction::NONE)
		exitPoints[entrySide0] = true;
	if (entrySide1 != Direction::NONE)
		exitPoints[entrySide1] = true;
	if (entrySide2 != Direction::NONE)
		exitPoints[entrySide2] = true;
	floodFillQueue.clear();
	floodFillQueue.push_back((QueueElement){x, y, z});

	while (floodFillQueue.size() > 0) {
		QueueElement item = floodFillQueue.back();
		floodFillQueue.pop_back();

		for (int i = 0; i < 6; i++) {
			const int* offset = DirectionToOffset[i];
			int x = item.x + offset[0], y = item.y + offset[1], z = item.z + offset[2];
			if (x < 0 || y < 0 || z < 0 || x >= CHUNK_SIZE || y >= CHUNK_SIZE || z >= CHUNK_SIZE) {
				exitPoints[i] = true;
			} else {
				if (!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf) && !(floodFillVisited[x][y][z] & 1)) {
					floodFillVisited[x][y][z] |= 1;
					floodFillQueue.push_back((QueueElement){x, y, z});
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
	u16 visiblity = 0;
	for (int i = 0; i < 6; i++)
		if (exitPoints[i])
			for (int j = 0; j < 6; j++)
				if (i != j && exitPoints[j])
					visiblity |= ChunkSeeThrough(i, j);
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

			u16 visibility = 0;

			memset(floodFillVisited, 0, sizeof(floodFillVisited));
			for (int x = 0; x < CHUNK_SIZE; x += CHUNK_SIZE - 1) {
				Direction::_ xDir = !x ? Direction::WEST : Direction::EAST;
				for (int z = 0; z < CHUNK_SIZE; z++) {
					Direction::_ zDir = Direction::NONE;
					if (z == 0)
						zDir = Direction::NORTH;
					else if (z == CHUNK_SIZE - 1)
						zDir = Direction::SOUTH;
					for (int y = 0; y < CHUNK_SIZE; y++) {
						Direction::_ yDir = Direction::NONE;
						if (y == 0)
							yDir = Direction::DOWN;
						else if (y == CHUNK_SIZE - 1)
							yDir = Direction::UP;

						if (!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf))
							visibility |= floodFill(world, item.chunk, cluster, x, y, z, xDir, yDir, zDir);
						Block block = fastBlockFetch(world, item.chunk, cluster, x + (!x ? -1 : 1), y, z);
						u8 meta		= fastMetadataFetch(world, item.chunk, cluster, x + (!x ? -1 : 1), y, z);
						if (!Block_Opaque(block, meta) && cluster->blocks[x][y][z] != Block_Air) {
							addFace(x, y, z, xDir, cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf, 0,
									!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf));
						}
					}
				}
			}
			for (int y = 0; y < CHUNK_SIZE; y += CHUNK_SIZE - 1) {
				Direction::_ yDir = !y ? Direction::DOWN : Direction::UP;
				for (int x = 0; x < CHUNK_SIZE; x++) {
					Direction::_ xDir = Direction::NONE;
					if (x == 0)
						xDir = Direction::WEST;
					else if (x == CHUNK_SIZE - 1)
						xDir = Direction::EAST;
					for (int z = 0; z < CHUNK_SIZE; z++) {
						Direction::_ zDir = Direction::NONE;
						if (z == 0)
							zDir = Direction::SOUTH;
						else if (z == CHUNK_SIZE - 1)
							zDir = Direction::NORTH;
						if (!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf))
							visibility |= floodFill(world, item.chunk, cluster, x, y, z, xDir, yDir, zDir);
						Block block = fastBlockFetch(world, item.chunk, cluster, x, y + (!y ? -1 : 1), z);
						u8 meta		= fastMetadataFetch(world, item.chunk, cluster, x, y + (!y ? -1 : 1), z);
						if (!Block_Opaque(block, meta) && cluster->blocks[x][y][z] != Block_Air) {
							addFace(x, y, z, yDir, cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf, 0,
									!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf));
						}
					}
				}
			}
			for (int z = 0; z < CHUNK_SIZE; z += CHUNK_SIZE - 1) {
				Direction::_ zDir = !z ? Direction::NORTH : Direction::SOUTH;
				for (int x = 0; x < CHUNK_SIZE; x++) {
					Direction::_ xDir = Direction::NONE;
					if (x == 0)
						xDir = Direction::WEST;
					else if (x == CHUNK_SIZE - 1)
						xDir = Direction::EAST;
					for (int y = 0; y < CHUNK_SIZE; y++) {
						Direction::_ yDir = Direction::NONE;
						if (y == 0)
							yDir = Direction::DOWN;
						else if (y == CHUNK_SIZE - 1)
							yDir = Direction::UP;
						if (!Block_Opaque(cluster->blocks[x][y][z], cluster->metadataLight[x][y][z] & 0xf))
							visibility |= floodFill(world, item.chunk, cluster, x, y, z, xDir, yDir, zDir);
						Block block = fastBlockFetch(world, item.chunk, cluster, x, y, z + (!z ? -1 : 1));
						u8 meta		= fastMetadataFetch(world, item.chunk, cluster, x, y, z + (!z ? -1 : 1));
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
				floodFill(world, item.chunk, cluster, WorldToLocalCoord(px), WorldToLocalCoord(py), WorldToLocalCoord(pz), Direction::NONE,
						  Direction::NONE, Direction::NONE);
			}

			int transparentVertices = transparentFaces * 6;
			int verticesTotal		= (currentFace * 6) - transparentVertices;
			VBOUpdate update;

			if (currentFace) {
				VBO_Block memBlock;
				if (verticesTotal > 0)
					memBlock = VBO_Alloc(verticesTotal * sizeof(WorldVertex));
				VBO_Block transparentMem;
				if (transparentFaces > 0)
					transparentMem = VBO_Alloc(transparentVertices * sizeof(WorldVertex));

				WorldVertex* opaqueData		 = (WorldVertex*)memBlock.memory;
				WorldVertex* transparentData = (WorldVertex*)transparentMem.memory;
				for (int j = 0; j < currentFace; j++) {
					Face face = faceBuffer[j];

					int offsetX = face.x + item.chunk->x * CHUNK_SIZE;
					int offsetZ = face.z + item.chunk->z * CHUNK_SIZE;
					int offsetY = face.y + i * CHUNK_SIZE;

					s16 iconUV[2];
					Block_GetTexture(face.block, face.direction, face.metadata, iconUV);

					WorldVertex* data = face.transparent ? transparentData : opaqueData;
					memcpy(data, &cube_sides_lut[face.direction * 6], sizeof(WorldVertex) * 6);

#define oneDivIconsPerRow (32768 / 8)
#define halfTexel (6)

					u8 color[3];
					Block_GetColor(face.block, face.metadata, face.direction, color);

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
					if (face.transparent)
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

			LightLock_Lock(&updateLock);
			vboUpdates.push_back(update);
			LightLock_Unlock(&updateLock);
		}
	}
	item.chunk->displayRevision = item.chunk->revision;
	item.chunk->forceVBOUpdate	= false;
}