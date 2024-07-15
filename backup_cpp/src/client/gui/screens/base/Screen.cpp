#include "client/gui/screens/base/Screen.h"

#include "client/Minecraft.h"

void Screen::initBase() {
	if (!initialized)
		init();

	initialized = true;
}
bool Screen::keyPressed(u32 keys) {
}
void Screen::onClose() {
	sMinecraft->setScreen(nullptr);
}