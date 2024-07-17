//
// Created by Elias on 16.07.2024.
//
#include "client/gui/Gui.h"
#include "client/gui/SpriteBatch.h"
#include "client/gui/State1.h"
#include "client/gui/state_machine/state_machine.h"
#include "client/renderer/VertexFmt.h"

extern void SelectWorldScreen(state_machine_t *machine);  // Forward declare state2

static bool clicked_play = false;
static bool clicked_quit = false;

void TitleScreen(state_machine_t *machine) {
	SpriteBatch_BindGuiTexture(GuiTexture_MenuBackground);
	for (int i = 0; i < 160 / 16 + 1; i++) {
		for (int j = 0; j < 120 / 16 + 1; j++) {
			SpriteBatch_PushQuadColor(i * 16, j * 16, -4, 32, 32, 0, 0, 16, 16, INT16_MAX);
		}
	}

	Gui_Offset(0, 2 * 32);
	Gui_BeginRow(Gui_RelativeWidth(1.f), 1);
	clicked_play = Gui_Button(1.01f, "Singleplayer", false);
	Gui_EndRow();
	Gui_BeginRow(Gui_RelativeWidth(1.f), 1);
	clicked_quit = Gui_Button(1.01f, "Quit", false);
	Gui_EndRow();

	if (clicked_play) {
		state_machine_set_current_state(machine, SelectWorldScreen);
	}
	if (clicked_quit) {
		exit(0);
	}
}
