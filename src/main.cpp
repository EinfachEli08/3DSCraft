#include "client/Minecraft.h"

#include <3ds.h>
#include <citro3d.h>

#ifdef __3DS__
constexpr double TICKS_PER_MSEC = 268111.856;
#endif

#include "util/FileIO.h"
#include "util/JsonUtils.h"

int main() {
	gfxInitDefault();

	gfxSet3D(true);

	romfsInit();

	Minecraft* gMinecraft = new Minecraft();

	u64 lastTime = svcGetSystemTick();
	float dt = 0.f, timeFull = 0.f, fpsClock = 0.f;
	int frameCounter = 0, fps = 0;

	while (aptMainLoop() && gMinecraft->isRunning()) {
		u64 currentTime = svcGetSystemTick();
		dt				= ((float)(currentTime / (float)TICKS_PER_MSEC) - (float)(lastTime / (float)TICKS_PER_MSEC)) / 1000.f;
		lastTime		= currentTime;
		timeFull += dt;

		frameCounter++;
		fpsClock += dt;
		if (fpsClock >= 1.f) {
			fps			 = frameCounter;
			frameCounter = 0;
			fpsClock	 = 0.f;
		}

		gMinecraft->tick(dt, timeFull, fps);

		lastTime = svcGetSystemTick();	// fix timing
	}

	delete gMinecraft;

	romfsExit();

	gfxExit();
	return 0;
}
