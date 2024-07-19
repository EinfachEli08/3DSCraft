//
// Created by Elias on 16.07.2024.
//

#include <citro3d.h>
#include <client/gui/Gui.h>
#include <client/gui/screens/TitleScreen.h>
#include <client/gui/state_machine/state_machine.h>
#include <client/renderer/texture/SpriteBatch.h>

#include <client/renderer/VertexFmt.h>

extern void SelectWorldScreen(state_machine_t *machine);  // Forward declare state2

static bool clicked_play = false;
static bool clicked_quit = false;

void TitleScreen(state_machine_t *machine) {

    for (int i = 0; i < 160 / 16 + 1; i++) {
        for (int j = 0; j < 120 / 16 + 1; j++) {
            Gui_DrawBackground(0,i,j,-4);
        }
    }

	Gui_SetPadding(0, 0);
	Gui_Offset(0, 2 * 32);
	Gui_BeginRow(Gui_RelativeWidth(1.f), 1);
	clicked_play = Gui_IconButton(1.f, "Singleplayer");
	Gui_EndRow();
	Gui_BeginRow(Gui_RelativeWidth(1.f), 1);
	clicked_quit = Gui_IconButton(1.f, "Quit");
	Gui_EndRow();
	Gui_SetPadding(2, 3);

	if (clicked_play) {
		state_machine_set_current_state(machine, SelectWorldScreen);
	}
	if (clicked_quit) {
		exit(0);
	}
}
