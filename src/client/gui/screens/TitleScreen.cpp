#include "client/gui/Gui.h"

#include "client/gui/SpriteBatch.h"
#include "client/renderer/VertexFmt.h"

static bool clicked_play			 = false;
static bool clicked_multiplayer_play = false;
static bool clicked_options			 = false;
static bool clicked_quit			 = false;
static bool clicked_language		 = false;
static bool clicked_support			 = false;
static bool clicked_back			 = false;

typedef enum {
	TitleState_Default,
	TitleState_Support,
	TitleState_Language
} TitleState;
static TitleState menustate = TitleState_Default;

#define TEX_QR_SRCSIZE 32
#define TEX_QR_SIZE TEX_QR_SRCSIZE * 2

void TitleScreen_Render() {
	SpriteBatch_SetScale(2);

#define SPRITE_BG_SIZE 32
	SpriteBatch_BindGuiTexture(GuiTexture_MenuBackground);
	for (int i = 0; i < 160 / 32 + 1; i++) {
		for (int j = 0; j < 120 / 32 + 1; j++) {
			SpriteBatch_PushQuad(i * SPRITE_BG_SIZE, j * SPRITE_BG_SIZE, -4, SPRITE_BG_SIZE, SPRITE_BG_SIZE, 0, 0, SPRITE_BG_SIZE,
								 SPRITE_BG_SIZE);
		}
	}

	if (menustate == TitleState_Default) {
		int movementX = 0, movementY = 0;
		Gui_GetCursorMovement(&movementX, &movementY);

		Gui_Offset(0, 15 + BUTTON_TEXT_PADDING);
		Gui_BeginRowCenter(Gui_RelativeWidth(0.80f), 1);
		clicked_play = Gui_Button(1.f, "Singleplayer");
		Gui_EndRow();

		Gui_BeginRowCenter(Gui_RelativeWidth(0.80f), 1);
		clicked_multiplayer_play = Gui_Button(1.f, "Multiplayer");
		Gui_EndRow();

		Gui_BeginRowCenter(Gui_RelativeWidth(0.80f), 2);
		clicked_options = Gui_Button(0.5f, "Options");
		clicked_quit	= Gui_Button(0.5f, "Quit");
		Gui_EndRow();

		Gui_BeginRowCenter(Gui_RelativeWidth(0.80f), 2);
		clicked_language = Gui_Button(0.25f, "Lang");
		Gui_Space(0.49);
		clicked_support = Gui_Button(0.25f, "Sup");
		Gui_EndRow();

	} else if (menustate == TitleState_Support) {
		// TODO: Krams rendern, hier passiert nix
		Gui_BeginRowCenter(Gui_RelativeWidth(0.80f), 1);
		Gui_Label(25, true, INT16_MAX, true, "This QRCode quides you to the 3DSCraft Discord server!");
		Gui_EndRow();

		SpriteBatch_BindGuiTexture(GuiTexture_SupportQR);
		SpriteBatch_PushQuad(44, 20, 1, TEX_QR_SIZE, TEX_QR_SIZE, 0, 0, TEX_QR_SRCSIZE, TEX_QR_SRCSIZE);

		Gui_Offset(0, 94 + BUTTON_TEXT_PADDING);
		Gui_BeginRowCenter(Gui_RelativeWidth(0.95f), 0);
		clicked_back = Gui_Button(1.f, "Back");
		Gui_EndRow();
	}
	if (clicked_support) {
		menustate		= TitleState_Support;
		clicked_support = false;
	} else if (clicked_back) {
		menustate	 = TitleState_Default;
		clicked_back = false;
	}
}

bool TitleScreen_SelectWorld() {
	return clicked_play;
}

bool TitleScreen_SelectQuit() {
	return clicked_quit;
}
