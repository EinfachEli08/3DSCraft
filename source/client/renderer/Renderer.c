#include "client/renderer/Renderer.h"

#include "client/Camera.h"
#include "client/gui/DebugUI.h"
#include "client/gui/Gui.h"
#include "client/gui/Inventory.h"
#include "client/gui/screens/SelectWorldScreen.h"
#include "client/renderer/Clouds.h"
#include "client/renderer/CubeMap.h"
#include "client/renderer/Cursor.h"
#include "client/renderer/PolyGen.h"
#include "client/renderer/WorldRenderer.h"
#include "client/renderer/texture/SpriteBatch.h"
#include "client/renderer/texture/TextureMap.h"
#include "world/level/block/Block.h"

#include <citro3d.h>

#include "client/gui/State1.h"
#include "client/gui/State2.h"

#include <cubemap_shbin.h>
#include <gui_shbin.h>
#include "world_shbin.h"

#define DISPLAY_TRANSFER_FLAGS                                                                                                             \
	(GX_TRANSFER_FLIP_VERT(0) | GX_TRANSFER_OUT_TILED(0) | GX_TRANSFER_RAW_COPY(0) | GX_TRANSFER_IN_FORMAT(GX_TRANSFER_FMT_RGBA8) |        \
	 GX_TRANSFER_OUT_FORMAT(GX_TRANSFER_FMT_RGB8) | GX_TRANSFER_SCALING(GX_TRANSFER_SCALE_NO))

#define CLEAR_COLOR_SKY 0x90d9ffff
// #define CLEAR_COLOR_SKY 0x06070cff
#define CLEAR_COLOR_BLACK 0x000000ff

static C3D_RenderTarget* renderTargets[2];
static C3D_RenderTarget* lowerScreen;

static DVLB_s *world_dvlb, *gui_dvlb, *cubemap_dvlb;
static shaderProgram_s world_shader, gui_shader, cubemap_shader;
static int world_shader_uLocProjection, gui_shader_uLocProjection, cubemap_shader_uLocProjection;

static C3D_AttrInfo world_vertexAttribs, gui_vertexAttribs, cubemap_vertexAttribs;

static C3D_Tex logoTex;

static World* world;
static Player* player;
static WorkQueue* workqueue;

static GameState* gamestate;

static state_machine_t* machine;

extern bool showDebugInfo;

extern void TitleScreen(state_machine_t* machine);
extern void SelectWorldScreen(state_machine_t* machine);

void Renderer_Init(World* world_, Player* player_, WorkQueue* queue, GameState* gamestate_) {
	machine = state_machine_create();
	state_machine_set_current_state(machine, TitleScreen);

	world	  = world_;
	player	  = player_;
	workqueue = queue;
	gamestate = gamestate_;

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

	cubemap_dvlb = DVLB_ParseFile((u32*)cubemap_shbin, cubemap_shbin_size);
	shaderProgramInit(&cubemap_shader);
	shaderProgramSetVsh(&cubemap_shader, &cubemap_dvlb->DVLE[0]);
	cubemap_shader_uLocProjection = shaderInstanceGetUniformLocation(cubemap_shader.vertexShader, "projection");

	AttrInfo_Init(&world_vertexAttribs);
	AttrInfo_AddLoader(&world_vertexAttribs, 0, GPU_SHORT, 3);
	AttrInfo_AddLoader(&world_vertexAttribs, 1, GPU_SHORT, 2);
	AttrInfo_AddLoader(&world_vertexAttribs, 2, GPU_UNSIGNED_BYTE, 3);
	AttrInfo_AddLoader(&world_vertexAttribs, 3, GPU_UNSIGNED_BYTE, 3);

	AttrInfo_Init(&gui_vertexAttribs);
	AttrInfo_AddLoader(&gui_vertexAttribs, 0, GPU_SHORT, 3);
	AttrInfo_AddLoader(&gui_vertexAttribs, 1, GPU_SHORT, 3);

	AttrInfo_Init(&cubemap_vertexAttribs);
	AttrInfo_AddLoader(&cubemap_vertexAttribs, 0, GPU_SHORT, 3);

	PolyGen_Init(world, player_);

	WorldRenderer_Init(player, world, workqueue, world_shader_uLocProjection);

	SpriteBatch_Init(gui_shader_uLocProjection);

	Gui_Init();

	C3D_CullFace(GPU_CULL_BACK_CCW);

	Block_Init();

	Item_Init();

	Texture_Load(&logoTex, "romfs:/assets/textures/gui/title/minecraft.png");
}

void Renderer_Deinit() {
	state_machine_delete(machine);

	C3D_TexDelete(&logoTex);

	Item_Deinit();

	Block_Deinit();

	PolyGen_Deinit();

	WorldRenderer_Deinit();

	Gui_Deinit();

	SpriteBatch_Deinit();

	shaderProgramFree(&gui_shader);
	DVLB_Free(gui_dvlb);
	shaderProgramFree(&world_shader);
	DVLB_Free(world_dvlb);

	C3D_Fini();
}

void Renderer_Render() {
	float iod = osGet3DSliderState() * PLAYER_HALFEYEDIFF;

	C3D_FrameBegin(C3D_FRAME_SYNCDRAW);

	if (*gamestate == GameState_Playing)
		PolyGen_Harvest();

	for (int i = 0; i < 2; i++) {
		C3D_RenderTargetClear(renderTargets[i], C3D_CLEAR_ALL, CLEAR_COLOR_SKY, 0);
		C3D_FrameDrawOn(renderTargets[i]);

		SpriteBatch_StartFrame(400, 240);

		C3D_TexEnv* env = C3D_GetTexEnv(0);
		C3D_TexEnvInit(env);
		C3D_TexEnvSrc(env, C3D_Both, GPU_TEXTURE0, GPU_PRIMARY_COLOR, 0);
		C3D_TexEnvFunc(env, C3D_Both, GPU_MODULATE);

		C3D_BindProgram(&world_shader);
		C3D_SetAttrInfo(&world_vertexAttribs);

		if (*gamestate == GameState_Playing) {
			C3D_TexBind(0, Block_GetTextureMap());

			WorldRenderer_Render(!i ? -iod : iod);

			SpriteBatch_BindGuiTexture(GuiTexture_Widgets);
			if (iod == 0.f)
				SpriteBatch_PushQuad(200 / 2 - 16 / 2, 120 / 2 - 16 / 2, 0, 16, 16, 240, 0, 16, 16);
		} else {
			/*start skymap
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
			 end skymap
			*/
			SpriteBatch_SetScale(2);

			SpriteBatch_BindTexture(&logoTex);

			SpriteBatch_PushQuad(36, 35, 0, 128, 32, 0, 0, 1024, 256);

			SpriteBatch_PushText(0, 112, 0, INT16_MAX, false, INT_MAX, NULL, APP_VERSION);

			SpriteBatch_PushText(210 - 70, 112, 0, INT16_MAX, false, INT_MAX, NULL, AUTHOR);

			SpriteBatch_SetScale(1);
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

	if (*gamestate == GameState_SelectWorld) {
		state_machine_run(machine);
	} else {
		SpriteBatch_SetScale(2);
		player->quickSelectBarSlots = Inventory_QuickSelectCalcSlots(160);
		Inventory_DrawQuickSelect(160 / 2 - Inventory_QuickSelectCalcWidth(player->quickSelectBarSlots) / 2,
								  120 - INVENTORY_QUICKSELECT_HEIGHT, player->quickSelectBar, player->quickSelectBarSlots,
								  &player->quickSelectBarSlot);
		player->inventorySite =
			Inventory_Draw(16, 0, 160, player->inventory, sizeof(player->inventory) / sizeof(ItemStack), player->inventorySite);
	}

	if (showDebugInfo)
		DebugUI_Draw();

	Gui_Frame();

	SpriteBatch_Render(GFX_BOTTOM);

	C3D_FrameEnd(0);
}
/*
//CUBEMAP STUFF


typedef struct { float position[3]; } vertex;

static const vertex vertex_list[] =
		{
				// First face (PZ)
				// First triangle
				{ {-0.5f, -0.5f, +0.5f} },
				{ {+0.5f, -0.5f, +0.5f} },
				{ {+0.5f, +0.5f, +0.5f} },
				// Second triangle
				{ {+0.5f, +0.5f, +0.5f} },
				{ {-0.5f, +0.5f, +0.5f} },
				{ {-0.5f, -0.5f, +0.5f} },

				// Second face (MZ)
				// First triangle
				{ {-0.5f, -0.5f, -0.5f} },
				{ {-0.5f, +0.5f, -0.5f} },
				{ {+0.5f, +0.5f, -0.5f} },
				// Second triangle
				{ {+0.5f, +0.5f, -0.5f} },
				{ {+0.5f, -0.5f, -0.5f} },
				{ {-0.5f, -0.5f, -0.5f} },

				// Third face (PX)
				// First triangle
				{ {+0.5f, -0.5f, -0.5f} },
				{ {+0.5f, +0.5f, -0.5f} },
				{ {+0.5f, +0.5f, +0.5f} },
				// Second triangle
				{ {+0.5f, +0.5f, +0.5f} },
				{ {+0.5f, -0.5f, +0.5f} },
				{ {+0.5f, -0.5f, -0.5f} },

				// Fourth face (MX)
				// First triangle
				{ {-0.5f, -0.5f, -0.5f} },
				{ {-0.5f, -0.5f, +0.5f} },
				{ {-0.5f, +0.5f, +0.5f} },
				// Second triangle
				{ {-0.5f, +0.5f, +0.5f} },
				{ {-0.5f, +0.5f, -0.5f} },
				{ {-0.5f, -0.5f, -0.5f} },

				// Fifth face (PY)
				// First triangle
				{ {-0.5f, +0.5f, -0.5f} },
				{ {-0.5f, +0.5f, +0.5f} },
				{ {+0.5f, +0.5f, +0.5f} },
				// Second triangle
				{ {+0.5f, +0.5f, +0.5f} },
				{ {+0.5f, +0.5f, -0.5f} },
				{ {-0.5f, +0.5f, -0.5f} },

				// Sixth face (MY)
				// First triangle
				{ {-0.5f, -0.5f, -0.5f} },
				{ {+0.5f, -0.5f, -0.5f} },
				{ {+0.5f, -0.5f, +0.5f} },
				// Second triangle
				{ {+0.5f, -0.5f, +0.5f} },
				{ {-0.5f, -0.5f, +0.5f} },
				{ {-0.5f, -0.5f, -0.5f} },
		};



// Helper function for loading a texture from a t3x file
static bool loadTextureFromFile(C3D_Tex* tex, C3D_TexCube* cube, const char* path)
{
	FILE* f = fopen(path, "rb");
	if (!f)
		return false;

	Tex3DS_Texture t3x = Tex3DS_TextureImportStdio(f, tex, cube, false);
	fclose(f);
	if (!t3x)
		return false;

	// Delete the t3x object since we don't need it
	Tex3DS_TextureFree(t3x);
	return true;
}

void BG_Init(void)
{
	// Load the vertex shader, create a shader program and bind it
	skybox_dvlb = DVLB_ParseFile((u32*)skybox_shbin, skybox_shbin_size);
	shaderProgramInit(&program);
	shaderProgramSetVsh(&program, &skybox_dvlb->DVLE[0]);
	C3D_BindProgram(&program);
	C3D_DepthTest(false, GPU_ALWAYS, GPU_WRITE_COLOR);

	// Get the location of the uniforms
	uLoc_projection = shaderInstanceGetUniformLocation(program.vertexShader, "projection");
	uLoc_modelView  = shaderInstanceGetUniformLocation(program.vertexShader, "modelView");

	// Configure attributes for use with the vertex shader
	C3D_AttrInfo* attrInfo = C3D_GetAttrInfo();
	AttrInfo_Init(attrInfo);
	AttrInfo_AddLoader(attrInfo, 0, GPU_FLOAT, 3); // v0=position

	// Compute the projection matrix
	Mtx_PerspTilt(&projection, C3D_AngleFromDegrees(45.0f), C3D_AspectRatioTop, 0.01f, 1000.0f, false);

	// Create the VBO (vertex buffer object)
	vbo_data = linearAlloc(sizeof(vertex_list));
	memcpy(vbo_data, vertex_list, sizeof(vertex_list));

	// Configure buffers
	C3D_BufInfo* bufInfo = C3D_GetBufInfo();
	BufInfo_Init(bufInfo);
	BufInfo_Add(bufInfo, vbo_data, sizeof(vertex), 1, 0x0);

	// Load the skybox texture and bind it to the first texture unit
	if (!loadTextureFromFile(&skybox_tex, &skybox_cube, "romfs:/gfx/skybox.t3x"))
		svcBreak(USERBREAK_PANIC);
	C3D_TexSetFilter(&skybox_tex, GPU_LINEAR, GPU_LINEAR);
	C3D_TexSetWrap(&skybox_tex, GPU_CLAMP_TO_EDGE, GPU_CLAMP_TO_EDGE);
	C3D_TexBind(0, &skybox_tex);


	C3D_TexEnv* env = C3D_GetTexEnv(0);
	C3D_TexEnvInit(env);
	C3D_TexEnvSrc(env, C3D_Both, GPU_TEXTURE0,0,0);
	C3D_TexEnvFunc(env, C3D_Both, GPU_REPLACE);
}

void BG_Render(void)
{


}

void BG_Exit(void)
{
	// Free the texture
	C3D_TexDelete(&skybox_tex);

	// Free the VBO
	linearFree(vbo_data);

	// Free the shader program
	shaderProgramFree(&program);
	DVLB_Free(skybox_dvlb);
}


*/
