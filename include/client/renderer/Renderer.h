#pragma once
#include <citro3d.h>

#include "Project.h"
#include "client/Camera.h"
#include "client/gui/DebugUI.h"
#include "client/gui/Gui.h"
#include "client/gui/Inventory.h"
#include "client/gui/SpriteBatch.h"
#include "client/player/Player.h"
#include "client/renderer/Clouds.h"
#include "client/renderer/Cursor.h"
#include "client/renderer/WorldRenderer.h"
#include "client/renderer/texture/Texture.h"
#include "world/WorkQueue.h"
#include "world/World.h"

#define DISPLAY_TRANSFER_FLAGS                                                                                                             \
	(GX_TRANSFER_FLIP_VERT(0) | GX_TRANSFER_OUT_TILED(0) | GX_TRANSFER_RAW_COPY(0) | GX_TRANSFER_IN_FORMAT(GX_TRANSFER_FMT_RGBA8) |        \
	 GX_TRANSFER_OUT_FORMAT(GX_TRANSFER_FMT_RGB8) | GX_TRANSFER_SCALING(GX_TRANSFER_SCALE_NO))

#define CLEAR_COLOR_SKY 0x90d9ffff
#define CLEAR_COLOR_BLACK 0x000000ff

class PolyGen;

// Der Renderer ist ein Singleton, weil die darunterliegende Graphik API es auch ist
class Renderer {
	public:
		Renderer(World* world, Player* player, WorkQueue* queue, GameState* gamestate, PolyGen* polygen);
		~Renderer();

		void render();

	private:
		C3D_RenderTarget* renderTargets[2];
		C3D_RenderTarget* lowerScreen;

		DVLB_s *world_dvlb, *gui_dvlb;
		shaderProgram_s world_shader, gui_shader;
		int world_shader_uLocProjection, gui_shader_uLocProjection;

		C3D_AttrInfo world_vertexAttribs, gui_vertexAttribs;

		C3D_Tex logoTex;

		World* world;
		Player* player;
		WorkQueue* workqueue;
		GameState* gamestate;

		PolyGen* polyGen;
};