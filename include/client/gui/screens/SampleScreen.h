#pragma once

#include "client/gui/screens/base/Screen.h"

class SampleScreen : public Screen {
	public:
		SampleScreen() : Screen("sample") {}

		void init() override {}
		void tick() override {}
		void render(touchPosition pos, float partialTicks) override {}

		bool touchClicked(touchPosition pos, u32 keys) override {}

		bool isPauseScreen() override { return false; }
};