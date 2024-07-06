#include "client/player/Player.h"

#include "world/level/Collision.h"
#include "world/level/block/Block.h"

Player::Player(World* _world)
	: position(0.f, 0.f, 0.f),
	  bobbing(0.f),
	  pitch(0.f),
	  yaw(0.f),
	  grounded(false),
	  sprinting(false),
	  world(_world),
	  fovAdd(0.f),
	  crouchAdd(0.f),
	  view(0.f, 0.f, -1.f),
	  crouching(false),
	  flying(false),
	  blockInSeight(false),
	  blockInActionRange(false),
	  velocity(0, 0, 0),
	  simStepAccum(0.f),
	  quickSelectBarSlots(INVENTORY_QUICKSELECT_MAXSLOTS),
	  quickSelectBarSlot(0),
	  autoJumpEnabled(true) {
	{
		int l          = 0;
		inventory[l++] = (ItemStack){ Block_Stone, 0, 1 };
		inventory[l++] = (ItemStack){ Block_Dirt, 0, 1 };
		inventory[l++] = (ItemStack){ Block_Grass, 0, 1 };
		inventory[l++] = (ItemStack){ Block_Cobblestone, 0, 1 };
		inventory[l++] = (ItemStack){ Block_Sand, 0, 1 };
		inventory[l++] = (ItemStack){ Block_Log, 0, 1 };
		inventory[l++] = (ItemStack){ Block_Leaves, 0, 1 };
		inventory[l++] = (ItemStack){ Block_Glass, 0, 1 };
		inventory[l++] = (ItemStack){ Block_Stone_Bricks, 0, 1 };
		inventory[l++] = (ItemStack){ Block_Brick, 0, 1 };
		inventory[l++] = (ItemStack){ Block_Planks, 0, 1 };
		for (u8 i = 0; i < 16; i++)
			inventory[l++] = (ItemStack){ Block_Wool, i, 1 };
		inventory[l++] = (ItemStack){ Block_Wool, 0, 1 };
		inventory[l++] = (ItemStack){ Block_Bedrock, 0, 1 };
		inventory[l++] = (ItemStack){ Block_Smooth_Stone, 0, 64 };
		inventory[l++] = (ItemStack){ Block_Smooth_Stone_Slab, 0, 64 };
		for (int i = 0; i < INVENTORY_QUICKSELECT_MAXSLOTS; i++)
			quickSelectBar[i] = (ItemStack){ Block_Air, 0, 0 };
	}
}

void Player::update() {
	view = Vector3<float>(-sinf(yaw) * cosf(pitch), sinf(pitch), -cosf(yaw) * cosf(pitch));

	blockInSeight      = Raycast_Cast(world, Vector3<float>(position.x, position.y + PLAYER_EYEHEIGHT, position.z), view, &viewRayCast);
	blockInActionRange = blockInSeight && viewRayCast.distSqr < 5.f * 5.f * 5.f;
}

bool Player::canMove(float newX, float newY, float newZ) {
	for (int x = -1; x < 2; x++) {
		for (int y = 0; y < 3; y++) {
			for (int z = -1; z < 2; z++) {
				int pX = FastFloor(newX) + x;
				int pY = FastFloor(newY) + y;
				int pZ = FastFloor(newZ) + z;
				if (world->getBlock(pX, pY, pZ) != Block_Air) {
					if (AABB_Overlap(newX - PLAYER_COLLISIONBOX_SIZE / 2.f, newY, newZ - PLAYER_COLLISIONBOX_SIZE / 2.f,
									 PLAYER_COLLISIONBOX_SIZE, PLAYER_HEIGHT, PLAYER_COLLISIONBOX_SIZE, pX, pY, pZ, 1.f, 1.f, 1.f)) {
						return false;
					}
				}
			}
		}
	}
	return true;
}

void Player::jump(Vector3<float> accl) {
	if (grounded && !flying) {
		velocity.x = accl.x * 1.1f;
		velocity.z = accl.z * 1.1f;
		velocity.y = 6.7f;
		jumped     = true;
		crouching  = false;
	}
}
// i wont let it stay like this
#include "client/gui/DebugUI.h"
const float MaxWalkVelocity     = 4.3f;
const float MaxFallVelocity     = -50.f;
const float GravityPlusFriction = 10.f;
void Player::move(float dt, Vector3<float> accl) {
	breakPlaceTimeout -= dt;
	simStepAccum += dt;
	const float SimStep = 1.f / 60.f;
	while (simStepAccum >= SimStep) {
		velocity.y -= GravityPlusFriction * SimStep * 2.f;
		if (velocity.y < MaxFallVelocity)
			velocity.y = MaxFallVelocity;

		if (flying)
			velocity.y = 0.f;

		float speedFactor = 1.f;
		if (!grounded && !flying) {
			if (jumped)
				speedFactor = 0.2f;
			else
				speedFactor = 0.6f;
		} else if (flying)
			speedFactor = 2.f;
		else if (crouching)
			speedFactor = 0.5f;
		Vector3<float> newPos   = position + velocity * SimStep + accl * (SimStep * speedFactor);
		Vector3<float> finalPos = position;

		bool wallCollision = false, wasGrounded = grounded;

		grounded = false;
		for (int j = 0; j < 3; j++) {
			int i                   = (int[]){ 0, 2, 1 }[j];
			bool collision          = false;
			Vector3<float> axisStep = /*Vector3<float>(i == 0 ? newPos.x : position.x, i == 1 ? newPos.y : position.y,
						 i == 2 ? newPos.z : position.z)*/
				finalPos;
			axisStep.v[i] = newPos.v[i];
			Box playerBox = Box_Create(axisStep.x - PLAYER_COLLISIONBOX_SIZE / 2.f, axisStep.y, axisStep.z - PLAYER_COLLISIONBOX_SIZE / 2.f,
									   PLAYER_COLLISIONBOX_SIZE, PLAYER_HEIGHT, PLAYER_COLLISIONBOX_SIZE);

			for (int x = -1; x < 2; x++) {
				for (int y = 0; y < 3; y++) {
					for (int z = -1; z < 2; z++) {
						int pX = FastFloor(axisStep.x) + x;
						int pY = FastFloor(axisStep.y) + y;
						int pZ = FastFloor(axisStep.z) + z;
						if (world->getBlock(pX, pY, pZ) != Block_Air) {
							Box blockBox = Box_Create(pX, pY, pZ, 1, 1, 1);

							Vector3<float> normal = Vector3<float>(0.f, 0.f, 0.f);
							float depth           = 0.f;
							int face              = 0;

							bool intersects = Collision_BoxIntersect(blockBox, playerBox, 0, &normal, &depth, &face);
							collision |= intersects;
						}
					}
				}
			}
			if (!collision)
				finalPos.v[i] = newPos.v[i];
			else if (i == 1) {
				if (velocity.y < 0.f || accl.y < 0.f)
					grounded = true;
				jumped     = false;
				velocity.x = 0.f;
				velocity.y = 0.f;
				velocity.z = 0.f;
			} else {
				wallCollision = true;
				if (i == 0)
					velocity.x = 0.f;
				else
					velocity.z = 0.f;
			}
		}

		Vector3<float> movDiff = finalPos - position;

		if (grounded && flying)
			flying = false;

		if (wallCollision && autoJumpEnabled) {
			Vector3<float> nrmDiff = (newPos - position).normal();
			Block block            = world->getBlock(FastFloor(finalPos.x + nrmDiff.x), FastFloor(finalPos.y + nrmDiff.y) + 2,
													 FastFloor(finalPos.z + nrmDiff.z));
			Block landingBlock     = world->getBlock(FastFloor(finalPos.x + nrmDiff.x), FastFloor(finalPos.y + nrmDiff.y) + 1,
													 FastFloor(finalPos.z + nrmDiff.z));
			if (block == Block_Air && landingBlock != Block_Air)
				jump(accl);
		}

		if (crouching && crouchAdd > -0.3f)
			crouchAdd -= SimStep * 2.f;
		if (!crouching && crouchAdd < 0.0f)
			crouchAdd += SimStep * 2.f;

		if (crouching && !grounded && wasGrounded && finalPos.y < position.y && movDiff.x != 0.f && movDiff.z != 0.f) {
			finalPos   = position;
			grounded   = true;
			velocity.y = 0.f;
		}

		position = finalPos;
		velocity = Vector3<float>(velocity.x * 0.95f, velocity.y, velocity.z * 0.95f);
		if (ABS(velocity.x) < 0.1f)
			velocity.x = 0.f;
		if (ABS(velocity.z) < 0.1f)
			velocity.z = 0.f;

		simStepAccum -= SimStep;
	}
}

void Player::blockPlace() {
	if (world && blockInActionRange && breakPlaceTimeout < 0.f) {
		const int* offset = DirectionToOffset[viewRayCast.direction];
		if (AABB_Overlap(position.x - PLAYER_COLLISIONBOX_SIZE / 2.f, position.y, position.z - PLAYER_COLLISIONBOX_SIZE / 2.f,
						 PLAYER_COLLISIONBOX_SIZE, PLAYER_HEIGHT, PLAYER_COLLISIONBOX_SIZE, viewRayCast.x + offset[0],
						 viewRayCast.y + offset[1], viewRayCast.z + offset[2], 1.f, 1.f, 1.f))
			return;
		world->setBlockAndMeta(viewRayCast.x + offset[0], viewRayCast.y + offset[1], viewRayCast.z + offset[2],
							   quickSelectBar[quickSelectBarSlot].block, quickSelectBar[quickSelectBarSlot].meta);
	}
	if (breakPlaceTimeout < 0.f)
		breakPlaceTimeout = PLAYER_PLACE_REPLACE_TIMEOUT;
}

void Player::blockBreak() {
	// if (world && blockInActionRange && breakPlaceTimeout < 0.f) {
	//	world->setBlock(viewRayCast.x, viewRayCast.y, viewRayCast.z, Blocks::AIR);
	//}
	if (breakPlaceTimeout < 0.f)
		breakPlaceTimeout = PLAYER_PLACE_REPLACE_TIMEOUT;
}
void Player::teleport(float x, float y, float z) {
	position.x = x;
	position.y = y;
	position.z = z;

	velocity = Vector3<float>(0, 0, 0);
	update();
}