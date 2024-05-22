#include "resources/JsonUtil.h"	 // Include your JSON classes here
#include <3ds.h>
#include <iostream>
#include <string>

int main() {
	// Initialize screen
	gfxInitDefault();
	consoleInit(GFX_TOP, NULL);

	// Create a JSONObject and set some values
	JSONObject obj;
	obj.set("name", "John");
	obj.set("age", 30);
	obj.set("is_student", false);

	// Print original JSON Object
	printf("Original JSON Object:");
	std::cout << obj << std::endl;

	// Write JSON Object to file
	std::string filePath = "new_file.json";
	JSONFileHandler::writeToFile(obj.toJSON(), filePath);

	// Read JSON Object from file
	JSONObject newObj;
	filePath = "new_file.json";
	newObj.fromJSON(JSONFileHandler::readFromFile(filePath));

	// Print JSON Object after reading from file
	printf("\nJSON Object after reading from file:");
	std::cout << newObj << std::endl;

	// Main loop
	while (aptMainLoop()) {
		// Scan input
		hidScanInput();
		u32 kDown = hidKeysDown();

		// Break the loop if Start button is pressed
		if (kDown & KEY_START)
			break;

		// Flush and swap framebuffers
		gfxFlushBuffers();
		gfxSwapBuffers();

		// Wait for VBlank
		gspWaitForVBlank();
	}

	// Deinitialize graphics and return
	gfxExit();
	return 0;
}
