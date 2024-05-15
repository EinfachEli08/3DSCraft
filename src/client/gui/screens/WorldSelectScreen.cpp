#include "client/gui/screens/WorldSelectScreen.h"

#include <dirent.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include <mpack/mpack.h>

#include <3ds.h>

#include "client/gui/Gui.h"
#include "client/gui/SpriteBatch.h"
#include "client/renderer/VertexFmt.h"

typedef struct {
		uint32_t lastPlayed;
		char name[WORLD_NAME_LIMIT];
		char path[256];
} WorldInfo;

static std::vector<WorldInfo> worlds;

void WorldSelect_ScanWorlds() {
	worlds->clear();

	DIR* directory = opendir("sdmc:/craft/saves");

	char buffer[512];

	struct dirent* entry;

	while ((entry = readdir(directory))) {
		sprintf(buffer, "sdmc:/craft/saves/%s/level.mp", entry->d_name);
		if (access(buffer, F_OK) != -1) {
			mpack_tree_t tree;
			mpack_tree_init_file(&tree, buffer, 0);
			mpack_node_t root = mpack_tree_root(&tree);

			char name[WORLD_NAME_LIMIT];
			mpack_node_copy_utf8_cstr(mpack_node_map_cstr(root, "name"), name, WORLD_NAME_LIMIT);

			if (mpack_tree_destroy(&tree) != mpack_ok) {
				continue;
			}

			WorldInfo info;
			strcpy(info.name, name);
			info.lastPlayed = 0;
			strcpy(info.path, entry->d_name);

			worlds->push_back(info);
		}
	}

	closedir(directory);
}

static void delete_folder(const char* path) {
	DIR* dir = opendir(path);
	struct dirent* entry;

	int pathLen = strlen(path);

	while ((entry = readdir(dir))) {
		if (!strcmp(entry->d_name, "..") || !strcmp(entry->d_name, "."))
			continue;

		int entryLen = strlen(entry->d_name);

		char buffer[pathLen + entryLen + 1];
		sprintf(buffer, "%s/%s", path, entry->d_name);

		if (entry->d_type == DT_DIR)
			delete_folder(buffer);
		else
			unlink(buffer);
	}

	closedir(dir);

	rmdir(path);
}

void WorldSelect_Init() {
	WorldSelect_ScanWorlds();
}

void WorldSelect_Deinit() {
}

typedef enum {
	MenuState_SelectWorld,
	MenuState_ConfirmDeletion,
	MenuState_WorldOptions
} MenuState;

static int scroll		 = 0;
static float velocity	 = 0.f;
static int selectedWorld = -1;

static bool clicked_play		 = false;
static bool clicked_new_world	 = false;
static bool clicked_delete_world = false;

static bool confirmed_world_options = false;
static bool canceled_world_options	= false;

static bool confirmed_deletion = false;
static bool canceled_deletion  = false;

static Enum::WorldGenType worldGenType = Enum::WorldGenType::Normal;

static char* worldGenTypesStr[] = {"Normal", "Superflat", "Custom"};

static MenuState menustate = MenuState_SelectWorld;

static float max_velocity = 20.f;
bool clicked_Back		  = false;

void WorldSelect_Render() {
	SpriteBatch_SetScale(2);

	SpriteBatch_BindGuiTexture(GuiTexture_MenuBackground);
	for (int i = 0; i < 160 / 32 + 1; i++) {
		for (int j = 0; j < 120 / 32 + 1; j++) {
			bool overlay = j >= 2 && menustate == MenuState_SelectWorld;
			SpriteBatch_PushQuadColor(i * 32, j * 32, overlay ? -4 : -10, 32, 32, 0, 0, 32, 32,
									  overlay ? INT16_MAX : SHADER_RGB(12, 12, 12));
		}
	}

	if (menustate == MenuState_SelectWorld) {
		int movementX = 0, movementY = 0;
		Gui_GetCursorMovement(&movementX, &movementY);
		if (Gui_IsCursorInside(0, 0, 160, 2 * 32)) {
			velocity += movementY / 2.f;
			velocity = CLAMP(velocity, -max_velocity, max_velocity);
		}
		scroll += velocity;
		velocity *= 0.75f;
		if (ABS(velocity) < 0.001f)
			velocity = 0.f;

		int maximumSize = CHAR_HEIGHT * 2 * worlds->size();
		if (scroll < -maximumSize)
			scroll = -maximumSize;
		if (scroll > 0)
			scroll = 0;

		int worldsMax = worlds->size();
		for (int i = 0; i < worldsMax; i++) {
			int y = i * (CHAR_HEIGHT + CHAR_HEIGHT) + 10 + scroll;
			if (selectedWorld == i) {
				SpriteBatch_PushSingleColorQuad(10, y - 3, -7, 140, 1, SHADER_RGB(20, 20, 20));
				SpriteBatch_PushSingleColorQuad(10, y + CHAR_HEIGHT + 2, -7, 140, 1, SHADER_RGB(20, 20, 20));
				SpriteBatch_PushSingleColorQuad(10, y - 3, -7, 1, CHAR_HEIGHT + 6, SHADER_RGB(20, 20, 20));
				SpriteBatch_PushSingleColorQuad(10 + 140, y - 3, -7, 1, CHAR_HEIGHT + 6, SHADER_RGB(20, 20, 20));
			}
			if (Gui_EnteredCursorInside(10, y - 3, 140, CHAR_HEIGHT + 6) && y < 32 * 2) {
				selectedWorld = i;
			}
			SpriteBatch_PushText(20, y, -6, INT16_MAX, true, INT_MAX, NULL, "%s", (*worlds)[i].name, movementY);
		}

		Gui_Offset(0, 2 * 32 + 5 + BUTTON_TEXT_PADDING);
		Gui_BeginRowCenter(Gui_RelativeWidth(0.95f), 1);
		clicked_play = Gui_Button(1.f, "Play selected world");
		Gui_EndRow();
		Gui_BeginRowCenter(Gui_RelativeWidth(0.95f), 2);
		clicked_new_world	 = Gui_Button(0.4f, "New World");
		clicked_delete_world = Gui_Button(0.4f, "Delete World");
		// TODO: Doesnt switch
		clicked_Back = Gui_Button(0.2f, "Back");
		Gui_EndRow();
	} else if (menustate == MenuState_ConfirmDeletion) {
		Gui_Offset(0, 10);
		Gui_BeginRow(SpriteBatch_GetWidth(), 1);
		Gui_Label(0.f, true, INT16_MAX, true, "Are you sure?");
		Gui_EndRow();
		Gui_VerticalSpace(Gui_RelativeHeight(0.4f));
		Gui_BeginRowCenter(Gui_RelativeWidth(0.8f), 3);
		canceled_deletion = Gui_Button(0.4f, "No");
		Gui_Space(0.2f);
		confirmed_deletion = Gui_Button(0.4f, "Yes");
		Gui_EndRow();
	} else if (menustate == MenuState_WorldOptions) {
		Gui_Offset(0, 10);
		Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 3);
		Gui_Label(0.45f, true, INT16_MAX, false, "World type:");
		Gui_Space(0.1f);
		if (Gui_Button(0.45f, "%s", worldGenTypesStr[worldGenType])) {
			worldGenType = Enum::WorldGenType((int)worldGenType + 1);
			if (worldGenType == Enum::WorldGenTypeCount)
				worldGenType = (Enum::WorldGenType)0;
		}
		Gui_EndRow();

		Gui_VerticalSpace(Gui_RelativeHeight(0.4f));

		Gui_BeginRowCenter(Gui_RelativeWidth(0.9f), 3);
		canceled_world_options = Gui_Button(0.45f, "Cancel");
		Gui_Space(0.1f);
		confirmed_world_options = Gui_Button(0.45f, "Continue");
	}
}

bool WorldSelect_Update(char* out_worldpath, char* out_name, Enum::WorldGenType* worldType, bool* newWorld) {
	if (clicked_new_world) {
		clicked_new_world = false;
		menustate		  = MenuState_WorldOptions;
	}
	if (confirmed_world_options) {
		confirmed_world_options = false;
		*worldType				= worldGenType;

		static SwkbdState swkbd;
		static char name[WORLD_NAME_LIMIT];

#ifndef _DEBUG
		swkbdInit(&swkbd, SWKBD_TYPE_WESTERN, 2, WORLD_NAME_LIMIT);
		swkbdSetValidation(&swkbd, SWKBD_NOTEMPTY_NOTBLANK, 0, WORLD_NAME_LIMIT);
		swkbdSetHintText(&swkbd, "Enter the world name");

		int button = swkbdInputText(&swkbd, name, 12);
#else
		strcpy(name, "testworld");
		int button = 2;
#endif

		strcpy(out_name, name);
		menustate = MenuState_SelectWorld;
		if (button == SWKBD_BUTTON_CONFIRM) {
			strcpy(out_worldpath, out_name);

			int length = strlen(out_worldpath);

			for (int i = 0; i < length; i++) {
				if (out_worldpath[i] == '/' || out_worldpath[i] == '\\' || out_worldpath[i] == '?' || out_worldpath[i] == ':' ||
					out_worldpath[i] == '|' || out_worldpath[i] == '<' || out_worldpath[i] == '>')
					out_worldpath[i] = '_';
			}

			while (true) {
				bool alreadyExisting = false;
				for (int i = 0; i < worlds->size(); i++) {
					if (!strcmp(out_worldpath, (*worlds)[i].path)) {
						alreadyExisting = true;
						break;
					}
				}
				if (!alreadyExisting)
					break;

				out_worldpath[length]	  = '_';
				out_worldpath[length + 1] = '\0';
				++length;
			}

			*newWorld = true;

			return true;
		}
	}
	if (clicked_play && selectedWorld != -1) {
		clicked_play = false;
		strcpy(out_name, (*worlds)[selectedWorld].name);
		strcpy(out_worldpath, (*worlds)[selectedWorld].path);

		*newWorld = false;
		menustate = MenuState_SelectWorld;
		return true;
	}
	if (clicked_delete_world && selectedWorld != -1) {
		clicked_delete_world = false;
		menustate			 = MenuState_ConfirmDeletion;
	}
	if (confirmed_deletion) {
		confirmed_deletion = false;
		char buffer[512];
		sprintf(buffer, "sdmc:/craft/saves/%s", (*worlds)[selectedWorld].path);
		delete_folder(buffer);

		WorldSelect_ScanWorlds();
		menustate = MenuState_SelectWorld;
	}
	if (canceled_deletion) {
		canceled_deletion = false;
		menustate		  = MenuState_SelectWorld;
	}
	if (canceled_world_options) {
		canceled_world_options = false;
		menustate			   = MenuState_SelectWorld;
	}

	return false;
}
// TODO: Doesnt switch
bool WorldSelectScreen_Previous() {
	return clicked_Back;
	clicked_Back = false;
}