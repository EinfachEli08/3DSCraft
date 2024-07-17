#pragma once

#include "client/player/Player.h"
#include "world/World.h"

class CommandLine {
	public:
		// CommandLine(World* world, Player* player) : world(world), player(player) {}

		static void activate(World* world, Player* player);
		static void execute(World* world, Player* player, const char* text);

		/*private:
			World* world;
			Player* player;*/
};

extern "C" {
void CommandLine_Activate(World* world, Player* player);
void CommandLine_Execute(World* world, Player* player, const char* text);
}