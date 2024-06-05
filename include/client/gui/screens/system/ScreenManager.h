// ScreenManager.h
#ifndef SCREENMANAGER_H
#define SCREENMANAGER_H

#include "client/gui/screens/system/Screen.h"

class ScreenManager {
	public:
		void setScreen(std::shared_ptr<Screen> screen);
		void update();

	private:
		std::shared_ptr<Screen> currentScreen;
};

#endif // SCREENMANAGER_H