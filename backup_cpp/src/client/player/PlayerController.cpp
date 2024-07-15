#include "client/player/PlayerController.h"

#include <ini/ini.h>
#include <unistd.h>

#include "commands/CommandLine.h"
#include "util/Paths.h"
#include "util/math/NumberUtils.h"

#include "client/gui/DebugUI.h"

#ifdef __3DS__
#include <3ds.h>
#define PLATFORM_BUTTONS 23
const char* platform_key_names[PLATFORM_BUTTONS] = {"Not Set",	  "A",			"B",		   "X",		   "Y",			"L",
													"R",		  "Start",		"Select",	   "DUp",	   "DDown",		"DLeft",
													"DRight",	  "CircUp",		"CircDown",	   "CircLeft", "CircRight", "CStickUp",
													"CStickDown", "CStickLeft", "CStickRight", "ZL",	   "ZR"};
enum {
	K3DS_Undefined = 0,
	K3DS_A,
	K3DS_B,
	K3DS_X,
	K3DS_Y,
	K3DS_L,
	K3DS_R,
	K3DS_START,
	K3DS_SELECT,
	K3DS_DUP,
	K3DS_DDOWN,
	K3DS_DLEFT,
	K3DS_DRIGHT,
	K3DS_CPAD_UP,
	K3DS_CPAD_DOWN,
	K3DS_CPAD_LEFT,
	K3DS_CPAD_RIGHT,
	K3DS_CSTICK_UP,
	K3DS_CSTICK_DOWN,
	K3DS_CSTICK_LEFT,
	K3DS_CSTICK_RIGHT,
	K3DS_ZL,
	K3DS_ZR
};

const PlayerController::Scheme platform_default_scheme = {.forward			= K3DS_X,
														  .backward			= K3DS_B,
														  .strafeLeft		= K3DS_Y,
														  .strafeRight		= K3DS_A,
														  .lookLeft			= K3DS_CPAD_LEFT,
														  .lookRight		= K3DS_CPAD_RIGHT,
														  .lookUp			= K3DS_CPAD_UP,
														  .lookDown			= K3DS_CPAD_DOWN,
														  .placeBlock		= K3DS_L,
														  .breakBlock		= K3DS_R,
														  .jump				= K3DS_DUP,
														  .switchBlockLeft	= K3DS_DLEFT,
														  .switchBlockRight = K3DS_DRIGHT,
														  .openCmd			= K3DS_SELECT,
														  .crouch			= K3DS_DDOWN};

const PlayerController::Scheme n3ds_default_scheme = {.forward			= K3DS_CPAD_UP,
													  .backward			= K3DS_CPAD_DOWN,
													  .strafeLeft		= K3DS_CPAD_LEFT,
													  .strafeRight		= K3DS_CPAD_RIGHT,
													  .lookLeft			= K3DS_CSTICK_LEFT,
													  .lookRight		= K3DS_CSTICK_RIGHT,
													  .lookUp			= K3DS_CSTICK_UP,
													  .lookDown			= K3DS_CSTICK_DOWN,
													  .placeBlock		= K3DS_L,
													  .breakBlock		= K3DS_R,
													  .jump				= K3DS_A,
													  .switchBlockLeft	= K3DS_DLEFT,
													  .switchBlockRight = K3DS_DRIGHT,
													  .openCmd			= K3DS_SELECT,
													  .crouch			= K3DS_DDOWN};
static void convertPlatformInput(InputData* input, float ctrls[], bool keysdown[], bool keysup[]) {
#define reg_bin_key(i, k)                                                                                                                  \
	ctrls[(i)]	  = (float)((input->keysdown & (k)) || (input->keysheld & (k)));                                                           \
	keysdown[(i)] = input->keysdown & (k);                                                                                                 \
	keysup[(i)]	  = input->keysup & (k)

	ctrls[0]	= 0.f;
	keysdown[0] = 0;
	keysup[0]	= 0;

	reg_bin_key(K3DS_A, KEY_A);
	reg_bin_key(K3DS_B, KEY_B);
	reg_bin_key(K3DS_X, KEY_X);
	reg_bin_key(K3DS_Y, KEY_Y);

	reg_bin_key(K3DS_L, KEY_L);
	reg_bin_key(K3DS_R, KEY_R);

	reg_bin_key(K3DS_START, KEY_START);
	reg_bin_key(K3DS_SELECT, KEY_SELECT);

	reg_bin_key(K3DS_DUP, KEY_DUP);
	reg_bin_key(K3DS_DDOWN, KEY_DDOWN);
	reg_bin_key(K3DS_DLEFT, KEY_DLEFT);
	reg_bin_key(K3DS_DRIGHT, KEY_DRIGHT);

	reg_bin_key(K3DS_ZL, KEY_ZL);
	reg_bin_key(K3DS_ZR, KEY_ZR);

	float circX = (float)input->circlePadX / 0x9c;
	float circY = (float)input->circlePadY / 0x9c;

#define reg_cpad_key(i, c, k)                                                                                                              \
	ctrls[(i)]	  = ABS(c) * (float)((input->keysdown & k) || (input->keysheld & k));                                                      \
	keysdown[(i)] = input->keysdown & (k);                                                                                                 \
	keysup[(i)]	  = input->keysup & (k)

	reg_cpad_key(K3DS_CPAD_UP, circY, KEY_CPAD_UP);
	reg_cpad_key(K3DS_CPAD_DOWN, circY, KEY_CPAD_DOWN);
	reg_cpad_key(K3DS_CPAD_LEFT, circX, KEY_CPAD_LEFT);
	reg_cpad_key(K3DS_CPAD_RIGHT, circX, KEY_CPAD_RIGHT);

	float cstickX = (float)input->cStickX / 0x9c;
	float cstickY = (float)input->cStickY / 0x9c;

	reg_cpad_key(K3DS_CSTICK_UP, cstickY, KEY_CSTICK_UP);
	reg_cpad_key(K3DS_CSTICK_DOWN, cstickY, KEY_CSTICK_DOWN);
	reg_cpad_key(K3DS_CSTICK_LEFT, cstickX, KEY_CSTICK_LEFT);
	reg_cpad_key(K3DS_CSTICK_RIGHT, cstickX, KEY_CSTICK_RIGHT);

#undef reg_bin_key
}
#else
#error "Input conversion functions not implemented for this platform"
#endif

typedef struct {
		float keys[PLATFORM_BUTTONS];
		bool keysup[PLATFORM_BUTTONS];
		bool keysdown[PLATFORM_BUTTONS];
} PlatformAgnosticInput;

static inline float IsKeyDown(KeyCombo combo, PlatformAgnosticInput* input) {
	return input->keys[combo];
}
static inline bool WasKeyReleased(KeyCombo combo, PlatformAgnosticInput* input) {
	return input->keysup[combo];
}
static inline bool WasKeyPressed(KeyCombo combo, PlatformAgnosticInput* input) {
	return input->keysdown[combo];
}

PlayerController::PlayerController(Player* player) {
	breakPlaceTimeout = 0.f;
	player			  = player;

	bool isNew3ds = false;
	APT_CheckNew3DS(&isNew3ds);
	if (isNew3ds) {
		controlScheme			= n3ds_default_scheme;
		player->autoJumpEnabled = false;
	} else {
		controlScheme			= platform_default_scheme;
		player->autoJumpEnabled = true;
	}

	openedCmd = false;

	bool elementMissing = false;

	std::string path = Path::root + "options.ini";
	if (access(path.c_str(), F_OK) != -1) {
		ini_t* cfg = ini_load(path.c_str());

		char buffer[64];

#define loadKey(variable)                                                                                                                  \
	if (ini_sget(cfg, "controls", #variable, "%s", buffer)) {                                                                              \
		for (int i = 0; i < PLATFORM_BUTTONS; i++) {                                                                                       \
			if (!strcmp(platform_key_names[i], buffer)) {                                                                                  \
				controlScheme.variable = i;                                                                                                \
				break;                                                                                                                     \
			}                                                                                                                              \
		}                                                                                                                                  \
	} else                                                                                                                                 \
		elementMissing = true;

		loadKey(forward);
		loadKey(backward);
		loadKey(strafeLeft);
		loadKey(strafeRight);
		loadKey(lookLeft);
		loadKey(lookRight);
		loadKey(lookUp);
		loadKey(lookDown);
		loadKey(placeBlock);
		loadKey(breakBlock);
		loadKey(jump);
		loadKey(switchBlockLeft);
		loadKey(switchBlockRight);
		loadKey(openCmd);
		loadKey(crouch);
#undef loadKey

		if (!ini_sget(cfg, "controls", "auto_jumping", "%d", &player->autoJumpEnabled))
			elementMissing = true;

		ini_free(cfg);

	} else
		elementMissing = true;

	if (elementMissing) {
		FILE* f = fopen(path.c_str(), "w");

		fprintf(f, "[controls]\n");
		fprintf(f, "; The allowed key values are: \n; ");
		int j = 0;
		for (int i = 0; i < PLATFORM_BUTTONS - 1; i++) {
			fprintf(f, "%s, ", platform_key_names[i]);
			if (++j == 5) {
				j = 0;
				fprintf(f, "\n ; ");
			}
		}
		fprintf(f, "%s\n\n", platform_key_names[PLATFORM_BUTTONS - 1]);

#define writeKey(key) fprintf(f, #key "=%s\n", platform_key_names[controlScheme.key]);

		writeKey(forward);
		writeKey(backward);
		writeKey(strafeLeft);
		writeKey(strafeRight);
		writeKey(lookLeft);
		writeKey(lookRight);
		writeKey(lookUp);
		writeKey(lookDown);
		writeKey(placeBlock);
		writeKey(breakBlock);
		writeKey(jump);
		writeKey(switchBlockLeft);
		writeKey(switchBlockRight);
		writeKey(openCmd);
		writeKey(crouch);

#undef writeKey

		fprintf(f, "; 0 = disabled, 1 = enabled default: 1 for O3ds, 0 for N3ds\nautojump=%d\n", player->autoJumpEnabled);

		fclose(f);
	}

	flyTimer = -1.f;
}

void PlayerController::update(InputData input, float dt) {
	PlatformAgnosticInput agnosticInput;
	convertPlatformInput(&input, agnosticInput.keys, agnosticInput.keysdown, agnosticInput.keysup);

	float jump	 = IsKeyDown(controlScheme.jump, &agnosticInput);
	float crouch = IsKeyDown(controlScheme.crouch, &agnosticInput);

	float forward	  = IsKeyDown(controlScheme.forward, &agnosticInput);
	float backward	  = IsKeyDown(controlScheme.backward, &agnosticInput);
	float strafeLeft  = IsKeyDown(controlScheme.strafeLeft, &agnosticInput);
	float strafeRight = IsKeyDown(controlScheme.strafeRight, &agnosticInput);

	Vector3<float> forwardVec = Vector3<float>(-sinf(player->yaw), 0.f, -cosf(player->yaw));
	Vector3<float> rightVec	  = forwardVec.cross(Vector3<float>(0, 1, 0));

	Vector3<float> movement = Vector3<float>(0, 0, 0);
	movement				= movement + forwardVec * forward;
	movement				= movement - forwardVec * backward;
	movement				= movement + rightVec * strafeRight;
	movement				= movement - rightVec * strafeLeft;
	if (player->flying) {
		movement = movement + Vector3<float>(0.f, jump, 0.f);
		movement = movement - Vector3<float>(0.f, crouch, 0.f);
	}
	if (movement.magnitudeSqr() > 0.f) {
		float speed = 4.3f * Vector3<float>(-strafeLeft + strafeRight, -crouch + jump, -forward + backward).magnitude();
		player->bobbing += speed * 1.5f * dt;
		movement = movement.normal() * speed;
	}

	float lookLeft	= IsKeyDown(controlScheme.lookLeft, &agnosticInput);
	float lookRight = IsKeyDown(controlScheme.lookRight, &agnosticInput);
	float lookUp	= IsKeyDown(controlScheme.lookUp, &agnosticInput);
	float lookDown	= IsKeyDown(controlScheme.lookDown, &agnosticInput);

	player->yaw += (lookLeft + -lookRight) * 160.f * DEG_TO_RAD * dt;
	player->pitch += (-lookDown + lookUp) * 160.f * DEG_TO_RAD * dt;
	player->pitch = CLAMP(player->pitch, -DEG_TO_RAD * 89.9f, DEG_TO_RAD * 89.9f);

	float placeBlock = IsKeyDown(controlScheme.placeBlock, &agnosticInput);
	float breakBlock = IsKeyDown(controlScheme.breakBlock, &agnosticInput);
	if (placeBlock > 0.f)
		player->blockPlace();
	if (breakBlock > 0.f)
		player->blockBreak();

	if (jump > 0.f)
		player->jump(movement);

	bool releasedJump = WasKeyReleased(controlScheme.jump, &agnosticInput);
	if (flyTimer >= 0.f) {
		if (jump > 0.f)
			player->flying ^= true;
		flyTimer += dt;
		if (flyTimer > 0.25f)
			flyTimer = -1.f;
	} else if (releasedJump) {
		flyTimer = 0.f;
	}

	bool releasedCrouch = WasKeyReleased(controlScheme.crouch, &agnosticInput);
	player->crouching ^= !player->flying && releasedCrouch;

	bool switchBlockLeft  = WasKeyPressed(controlScheme.switchBlockLeft, &agnosticInput);
	bool switchBlockRight = WasKeyPressed(controlScheme.switchBlockRight, &agnosticInput);
	if (switchBlockLeft && --player->quickSelectBarSlot == -1)
		player->quickSelectBarSlot = player->quickSelectBarSlots - 1;
	if (switchBlockRight && ++player->quickSelectBarSlot == player->quickSelectBarSlots)
		player->quickSelectBarSlot = 0;

	if (openedCmd) {
		dt		  = 0.f;
		openedCmd = false;
	}

	float cmdLine = WasKeyPressed(controlScheme.openCmd, &agnosticInput);
	if (cmdLine) {
		CommandLine_Activate(player->world, player);
		openedCmd = true;
	}

	player->move(dt, movement);
	player->update();
}
