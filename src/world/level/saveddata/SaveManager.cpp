#include "world/level/saveddata/SaveManager.h"

#include <dirent.h>
#include <unistd.h>

#include <mpack/mpack.h>

#include "client/Crash.h"
#include "client/gui/DebugUI.h"
#include "client/player/Player.h"
#include "world/level/saveddata/SuperChunk.h"

#define mkdirFlags S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH

void SaveManager::initFileSystem() {
	mkdir("sdmc:/craft", mkdirFlags);
	mkdir("sdmc:/craft/saves", mkdirFlags);
}

SaveManager::SaveManager(Player* player) : player(player), world(player->world) {
	vec_init(&superChunks);
}
SaveManager::~SaveManager() {
	vec_deinit(&superChunks);
}

#define mpack_elvis(node, key, typ, default_)                                                                                              \
	((mpack_node_type(mpack_node_map_cstr_optional((node), (key))) != mpack_type_nil)                                                      \
		 ? mpack_node_##typ(mpack_node_map_cstr_optional((node), (key)))                                                                   \
		 : (default_))

// Define C-compatible functions
extern "C" {
void SaveManager_load(SaveManager* manager, const char* path) {
	// Your existing code here
	// Replace "SaveManager::" with "manager->"
	char buffer[256];

	sprintf(buffer, "sdmc:/craft/saves/%s", path);
	mkdir(buffer, mkdirFlags);
	chdir(buffer);

	mkdir("superchunks", mkdirFlags);

	if (access("level.mp", F_OK) != -1) {
		mpack_tree_t levelTree;
		mpack_tree_init_file(&levelTree, "level.mp", 0);
		mpack_node_t root = mpack_tree_root(&levelTree);

		mpack_node_copy_utf8_cstr(mpack_node_map_cstr(root, "name"), manager->world->name, sizeof(manager->world->name));

		mpack_node_t worldTypeNode = mpack_node_map_cstr_optional(root, "worldType");
		if (mpack_node_type(worldTypeNode) != mpack_type_nil)
			manager->world->genSettings.type = (Enum::WorldGenType)mpack_node_uint(worldTypeNode);
		else
			manager->world->genSettings.type = Enum::WorldGenType::SuperFlat;

		mpack_node_t player = mpack_node_array_at(mpack_node_map_cstr(root, "players"), 0);

		manager->player->position.x = mpack_node_float(mpack_node_map_cstr(player, "x"));
		manager->player->position.y = mpack_node_float(mpack_node_map_cstr(player, "y")) + 0.1f;
		manager->player->position.z = mpack_node_float(mpack_node_map_cstr(player, "z"));

		manager->player->pitch = mpack_node_float(mpack_node_map_cstr(player, "pitch"));
		manager->player->yaw   = mpack_node_float(mpack_node_map_cstr(player, "yaw"));

		manager->player->flying	   = mpack_elvis(player, "flying", bool, false);
		manager->player->crouching = mpack_elvis(player, "crouching", bool, false);

		mpack_error_t err = mpack_tree_destroy(&levelTree);
		if (err != mpack_ok) {
			Crash("Mpack error %d while loading world manifest %s", err, path);
		}
	}
}
}
void SaveManager::load(const char* path) {
	SaveManager_load(this, path);
}

void SaveManager::unload() {
	mpack_writer_t writer;
	mpack_writer_init_file(&writer, "level.mp");
	mpack_start_map(&writer, 3);

	mpack_write_cstr(&writer, "name");
	mpack_write_cstr(&writer, world->name);

	mpack_write_cstr(&writer, "players");
	mpack_start_array(&writer, 1);
	mpack_start_map(&writer, 7);

	mpack_write_cstr(&writer, "x");
	mpack_write_float(&writer, player->position.x);
	mpack_write_cstr(&writer, "y");
	mpack_write_float(&writer, player->position.y);
	mpack_write_cstr(&writer, "z");
	mpack_write_float(&writer, player->position.z);

	mpack_write_cstr(&writer, "pitch");
	mpack_write_float(&writer, player->pitch);
	mpack_write_cstr(&writer, "yaw");
	mpack_write_float(&writer, player->yaw);

	mpack_write_cstr(&writer, "flying");
	mpack_write_bool(&writer, player->flying);

	mpack_write_cstr(&writer, "crouching");
	mpack_write_bool(&writer, player->crouching);

	mpack_finish_map(&writer);
	mpack_finish_array(&writer);

	mpack_write_cstr(&writer, "worldType");
	mpack_write_uint(&writer, world->genSettings.type);

	mpack_finish_map(&writer);

	mpack_error_t err = mpack_writer_destroy(&writer);
	if (err != mpack_ok) {
		Crash("Mpack error %d while saving world manifest", err);
	}

	for (int i = 0; i < superChunks.length; i++) {
		SuperChunk_Deinit(superChunks.data[i]);
		free(superChunks.data[i]);
	}
	vec_clear(&superChunks);
}

static SuperChunk* fetchSuperChunk(SaveManager* mgr, int x, int z) {
	for (int i = 0; i < mgr->superChunks.length; i++) {
		if (mgr->superChunks.data[i]->x == x && mgr->superChunks.data[i]->z == z) {
			return mgr->superChunks.data[i];
		}
	}
	SuperChunk* superchunk = (SuperChunk*)malloc(sizeof(SuperChunk));
	SuperChunk_Init(superchunk, x, z);
	vec_push(&mgr->superChunks, superchunk);
	svcSleepThread(50000);
	return superchunk;
}

void SaveManager::LoadChunk::chunkFunction(WorkQueue* queue, WorkerItem item) {
	int x				   = ChunkToSuperChunkCoord(item.chunk->x);
	int z				   = ChunkToSuperChunkCoord(item.chunk->z);
	SuperChunk* superChunk = fetchSuperChunk(parent, x, z);

	SuperChunk_LoadChunk(superChunk, item.chunk);
}
void SaveManager::SaveChunk::chunkFunction(WorkQueue* queue, WorkerItem item) {
	int x				   = ChunkToSuperChunkCoord(item.chunk->x);
	int z				   = ChunkToSuperChunkCoord(item.chunk->z);
	SuperChunk* superChunk = fetchSuperChunk(parent, x, z);

	SuperChunk_SaveChunk(superChunk, item.chunk);
}
