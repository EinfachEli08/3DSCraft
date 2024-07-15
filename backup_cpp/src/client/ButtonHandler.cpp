#include "client/ButtonHandler.h"

#include "client/Minecraft.h"
#include "client/gui/screens/base/Screen.h"

static bool keysReleased = false;

void ButtonHandler::keyPress(u32 keys) {
	Screen* screen = sMinecraft->getScreen();
	if (screen) {
		bool aboolean = false;
		if (!keys && keysReleased) {
			aboolean	 = screen->keyReleased(keys);
			keysReleased = true;
		} else {
			// screens.afterButtonAction();
			aboolean	 = screen->keyPressed(keys);
			keysReleased = false;
		}
		if (aboolean) {
			printf("keyPressed event handler returned 1...");
			return;
		}
	}
}  // og is filled with debug keyboard stuff