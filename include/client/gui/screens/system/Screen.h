// Screen.h
#ifndef SCREEN_H
#define SCREEN_H

#include <memory>

class Screen {
	public:
		virtual ~Screen() = default;

		virtual void screenInit() = 0;
		virtual void screenUpdate() = 0;
		virtual void screenClose() = 0;

		void switchScreen(std::shared_ptr<Screen> newScreen);
};

#endif // SCREEN_H