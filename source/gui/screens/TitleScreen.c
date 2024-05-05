//
// Created by Elias on 05.05.2024.
//

#include <gui/Gui.h>

#include <rendering/VertexFmt.h>
#include <gui/SpriteBatch.h>

static bool clicked_play = false;
static bool clicked_multiplayer_play = false;
static bool clicked_new_world = false;
static bool clicked_delete_world = false;
static bool clicked_language = false;
static bool clicked_support = false;

void TitleScreen_Render(){
	SpriteBatch_SetScale(2);

	SpriteBatch_BindGuiTexture(GuiTexture_MenuBackground);
	for (int i = 0; i < 160 / 32 + 1; i++) {
		for (int j = 0; j < 120 / 32 + 1; j++) {
			SpriteBatch_PushQuadColor(i * 32, j * 32, -4 , 32, 32, 0, 0, 32, 32, INT16_MAX);
		}
	}

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
	clicked_new_world = Gui_Button(0.5f, "Options");
	clicked_delete_world = Gui_Button(0.5f, "Quit");
	Gui_EndRow();

	Gui_BeginRowCenter(Gui_RelativeWidth(0.80f), 2);
	clicked_language = Gui_Button(0.25f, "Lang");
	Gui_Space(0.49);
	clicked_support = Gui_Button(0.25f, "Sup");
	Gui_EndRow();
}

bool TitleScreen_SelectWorld(){
	return clicked_play;
}