#include "client/renderer/Renderer.h"

#include <gui_shbin.h>
#include <world_shbin.h>

#include "client/gui/screens/TitleScreen.h"
#include "client/gui/screens/WorldSelectScreen.h"
#include "client/renderer/PolyGen.h"
#include "client/renderer/texture/TileSetMan.h"
#include "texheaders/gui_title.h"

Renderer::Renderer(World* world, Player* player, WorkQueue* queue, GameState* gamestate, PolyGen* polyGen)
	: world(world), player(player), workqueue(workqueue), gamestate(gamestate), polyGen(polyGen) {
	C3D_Init(C3D_DEFAULT_CMDBUF_SIZE);

	renderTargets[0] = C3D_RenderTargetCreate(240, 400, GPU_RB_RGBA8, GPU_RB_DEPTH16);
	renderTargets[1] = C3D_RenderTargetCreate(240, 400, GPU_RB_RGBA8, GPU_RB_DEPTH16);
	C3D_RenderTargetSetOutput(renderTargets[0], GFX_TOP, GFX_LEFT, DISPLAY_TRANSFER_FLAGS);
	C3D_RenderTargetSetOutput(renderTargets[1], GFX_TOP, GFX_RIGHT, DISPLAY_TRANSFER_FLAGS);

	lowerScreen = C3D_RenderTargetCreate(240, 320, GPU_RB_RGBA8, GPU_RB_DEPTH16);
	C3D_RenderTargetSetOutput(lowerScreen, GFX_BOTTOM, GFX_LEFT, DISPLAY_TRANSFER_FLAGS);

	world_dvlb = DVLB_ParseFile((u32*)world_shbin, world_shbin_size);
	shaderProgramInit(&world_shader);
	shaderProgramSetVsh(&world_shader, &world_dvlb->DVLE[0]);
	world_shader_uLocProjection = shaderInstanceGetUniformLocation(world_shader.vertexShader, "projection");

	gui_dvlb = DVLB_ParseFile((u32*)gui_shbin, gui_shbin_size);
	shaderProgramInit(&gui_shader);
	shaderProgramSetVsh(&gui_shader, &gui_dvlb->DVLE[0]);
	gui_shader_uLocProjection = shaderInstanceGetUniformLocation(gui_shader.vertexShader, "projection");

	AttrInfo_Init(&world_vertexAttribs);
	AttrInfo_AddLoader(&world_vertexAttribs, 0, GPU_SHORT, 3);
	AttrInfo_AddLoader(&world_vertexAttribs, 1, GPU_SHORT, 2);
	AttrInfo_AddLoader(&world_vertexAttribs, 2, GPU_UNSIGNED_BYTE, 3);
	AttrInfo_AddLoader(&world_vertexAttribs, 3, GPU_UNSIGNED_BYTE, 3);

	AttrInfo_Init(&gui_vertexAttribs);
	AttrInfo_AddLoader(&gui_vertexAttribs, 0, GPU_SHORT, 3);
	AttrInfo_AddLoader(&gui_vertexAttribs, 1, GPU_SHORT, 3);

	WorldRenderer_Init(player, world, workqueue, world_shader_uLocProjection);

	SpriteBatch_Init(gui_shader_uLocProjection);

	Gui_Init();

	C3D_CullFace(GPU_CULL_BACK_CCW);

	Block_Init();

	logoTex = *TileSetMan::getTexture({TileSetGroup::GUI_TITLE, title_minecraft_idx});
}

Renderer::~Renderer() {
	C3D_TexDelete(&logoTex);

	Block_Deinit();

	WorldRenderer_Deinit();

	Gui_Deinit();

	SpriteBatch_Deinit();

	shaderProgramFree(&gui_shader);
	DVLB_Free(gui_dvlb);
	shaderProgramFree(&world_shader);
	DVLB_Free(world_dvlb);

	C3D_Fini();
}

void Renderer::render() {
	float iod = osGet3DSliderState() * PLAYER_HALFEYEDIFF;

	C3D_FrameBegin(C3D_FRAME_SYNCDRAW);

	if (*gamestate == GameState_Playing)
		polyGen->harvest();

	for (int i = 0; i < 2; i++) {
		C3D_RenderTargetClear(renderTargets[i], C3D_CLEAR_ALL, CLEAR_COLOR_SKY, 0);
		C3D_FrameDrawOn(renderTargets[i]);

		SpriteBatch_StartFrame(400, 240);

		C3D_TexEnv* env = C3D_GetTexEnv(0);
		C3D_TexEnvInit(env);
		// OLD : C3D_TexEnvSrc(env, C3D_Both, GPU_TEXTURE0, GPU_PRIMARY_COLOR, 0);
		C3D_TexEnvSrc(env, C3D_Both, GPU_TEXTURE0, GPU_PRIMARY_COLOR);
		C3D_TexEnvFunc(env, C3D_Both, GPU_MODULATE);

		C3D_BindProgram(&world_shader);
		C3D_SetAttrInfo(&world_vertexAttribs);

		if (*gamestate == GameState_Playing) {
			C3D_TexBind(0, (C3D_Tex*)Block_GetTileSet());

			WorldRenderer_Render(!i ? -iod : iod);

			SpriteBatch_BindGuiTexture(GuiTexture_Widgets);
			if (iod == 0.f)
				SpriteBatch_PushQuad(92, 52, 0, 16, 16, 240, 0, 16, 16);
		} else {
			C3D_Mtx projection;
			Mtx_PerspStereoTilt(&projection, C3D_AngleFromDegrees(90.f), ((400.f) / (240.f)), 0.22f, 4.f * CHUNK_SIZE, !i ? -iod : iod, 3.f,
								false);

			C3D_Mtx view;
			Mtx_Identity(&view);
			Mtx_Translate(&view, 0.f, -70.f, 0.f, false);

			Mtx_RotateX(&view, -C3D_AngleFromDegrees(30.f), true);

			C3D_Mtx vp;
			Mtx_Multiply(&vp, &projection, &view);

			Clouds_Render(world_shader_uLocProjection, &vp, world, 0.f, 0.f);

			SpriteBatch_BindTexture(&logoTex);

			SpriteBatch_SetScale(2);
			SpriteBatch_PushQuad(36, 35, 0, 128, 32, 0, 0, 1024, 256);

			SpriteBatch_PushText(0, 0, 0, INT16_MAX, true, INT_MAX, NULL, gVersion);

			SpriteBatch_SetScale(1);
			// interesting, no + needed
			// SpriteBatch_PushText(0, 200, 100, 0xffffff, true, INT_MAX, NULL, "fix Top Screen Drawing somehow");

			// shouldnt that work?
		}

		C3D_BindProgram(&gui_shader);
		C3D_SetAttrInfo(&gui_vertexAttribs);

		SpriteBatch_Render(GFX_TOP);

		if (iod <= 0.f)
			break;
	}

	C3D_RenderTargetClear(lowerScreen, C3D_CLEAR_ALL, CLEAR_COLOR_BLACK, 0);
	C3D_FrameDrawOn(lowerScreen);

	SpriteBatch_StartFrame(320, 240);

	if (*gamestate == GameState_TitleScreen)
		TitleScreen_Render();
	else
		// Inventar rendern
		if (*gamestate == GameState_SelectWorld)
			WorldSelect_Render();
		else {
			SpriteBatch_SetScale(2);
			player->quickSelectBarSlots = Inventory_QuickSelectCalcSlots();
			Inventory_DrawQuickSelect(160 / 2 - Inventory_QuickSelectCalcWidth() / 2, 120 - INVENTORY_QUICKSELECT_HEIGHT,
									  player->quickSelectBar, player->quickSelectBarSlots, &player->quickSelectBarSlot);

			Inventory_Draw(8, 0, player->inventory, sizeof(player->inventory) / sizeof(ItemStack));
		}

	if (gIsDebug)
		DebugUI_Draw();

	Gui_Frame();

	SpriteBatch_Render(GFX_BOTTOM);

	C3D_FrameEnd(0);
}