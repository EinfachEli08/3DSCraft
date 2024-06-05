// SampleScreen.h
#ifndef SAMPLESCREEN_H
#define SAMPLESCREEN_H

#include "client/gui/screens/system/Screen.h"
#include <iostream>

class SampleScreen : public Screen {
	public:
		void screenInit() override {
			std::cout << "SampleScreen Init\n";
		}

		void screenUpdate() override {
			std::cout << "SampleScreen Update\n";
		}

		void screenClose() override {
			std::cout << "SampleScreen Close\n";
		}
};

#endif // SAMPLESCREEN_H