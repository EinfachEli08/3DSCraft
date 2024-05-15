#pragma once

#include <stdbool.h>

#include "client/gui/Inventory.h"
#include "world/item/ItemStack.h"

#include "util/VecMath.h"
#include "world/Raycast.h"

#define PLAYER_EYEHEIGHT (1.65f)
#define PLAYER_HEIGHT (1.8f)
#define PLAYER_COLLISIONBOX_SIZE (0.65f)
#define PLAYER_HALFEYEDIFF (0.07f)

#define PLAYER_PLACE_REPLACE_TIMEOUT (0.2f)

class World;
class Player {
	public:
		Player(World* world);

		void update();
		void move(float dt, float3 accl);
		void blockPlace();
		void blockBreak();
		void jump(float3 accl);
		void teleport(float x, float y, float z);

		bool canMove(float newX, float newY, float newZ);

		World* world;
		float3 position;
		float pitch, yaw;
		float bobbing, fovAdd, crouchAdd;
		bool grounded, jumped, sprinting, flying, crouching;
		bool autoJumpEnabled;

		float3 view;

		int quickSelectBarSlot;
		int quickSelectBarSlots;

		float3 velocity;
		float simStepAccum;

		float breakPlaceTimeout;

		ItemStack inventory[27];  // 9*3 is default (for 27 cells like in MC)

		ItemStack quickSelectBar[INVENTORY_QUICKSELECT_MAXSLOTS];  // TODO: wenn die Fenstergröße verändert wird irgendwas tuen

		Raycast_Result viewRayCast;
		bool blockInSeight, blockInActionRange;
};