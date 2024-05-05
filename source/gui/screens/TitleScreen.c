//
// Created by Elias on 05.05.2024.
//

#include <gui/Gui.h>

#include <rendering/VertexFmt.h>
#include <gui/SpriteBatch.h>

static bool clicked_play = false;
static bool clicked_multiplayer_play = false;
static bool clicked_options = false;
static bool clicked_quit = false;
static bool clicked_language = false;
static bool clicked_support = false;
static bool clicked_back = false;

static int menustate = 0;


void TitleScreen_Render(){
	SpriteBatch_SetScale(2);

	SpriteBatch_BindGuiTexture(GuiTexture_MenuBackground);
	for (int i = 0; i < 160 / 32 + 1; i++) {
		for (int j = 0; j < 120 / 32 + 1; j++) {
			SpriteBatch_PushQuadColor(i * 32, j * 32, -4 , 32, 32, 0, 0, 32, 32, INT16_MAX);
		}
	}

	if(menustate==0){
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
		clicked_quit = Gui_Button(0.5f, "Quit");
		Gui_EndRow();

		Gui_BeginRowCenter(Gui_RelativeWidth(0.80f), 2);
		clicked_language = Gui_Button(0.25f, "Lang");
		Gui_Space(0.49);
		clicked_support = Gui_Button(0.25f, "Sup");
		Gui_EndRow();
	}else{

	//TODO: Krams rendern, hier passiert nix
		SpriteBatch_BindGuiTexture(GuiTexture_SupportQR);
		SpriteBatch_PushQuadColor(32, 32, 100, 150, 150, 0, 0, 150, 150, INT16_MAX);

		Gui_Offset(0, 150 + BUTTON_TEXT_PADDING);
		Gui_BeginRowCenter(Gui_RelativeWidth(0.80f), 2);
		clicked_back = Gui_Button(1.f, "Back");
		Gui_EndRow();

	}
	if(clicked_support){
		menustate=1;
	}else{
		menustate=0;
	}


}

bool TitleScreen_SelectWorld(){
	return clicked_play;
}

bool TitleScreen_SelectQuit(){
	return clicked_quit;
}
