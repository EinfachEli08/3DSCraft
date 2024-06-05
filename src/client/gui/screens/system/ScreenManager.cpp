
// ScreenManager.cpp
#include "client/gui/screens/system/ScreenManager.h"

void ScreenManager::setScreen(std::shared_ptr<Screen> screen) {
	if (currentScreen) {
		currentScreen->screenClose();
	}
	currentScreen = screen;
	if (currentScreen) {
		currentScreen->screenInit();
	}
}

void ScreenManager::update() {
	if (currentScreen) {
		currentScreen->screenUpdate();
	}
}
