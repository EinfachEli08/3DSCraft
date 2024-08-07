#include "client/player/Player.h"

#include "client/player/InputData.h"

#include "sounds/Sound.h"
#include <stdbool.h>
#include <stdint.h>

typedef int KeyCombo;
typedef struct {
		KeyCombo forward, backward, strafeLeft, strafeRight;
		KeyCombo lookLeft, lookRight, lookUp, lookDown;

		KeyCombo placeBlock, breakBlock;
		KeyCombo jump;

		KeyCombo switchBlockLeft;
		KeyCombo switchBlockRight;

		KeyCombo openCmd;

		KeyCombo crouch;
} PlayerControlScheme;
typedef struct {
		Player* player;
		PlayerControlScheme controlScheme;

		float breakPlaceTimeout;
		bool openedCmd;

		float flyTimer;
} PlayerController;

void PlayerController_Init(PlayerController* ctrl, Player* player);
void PlayerController_Update(PlayerController* ctrl, Sound* sound, InputData input, float dt);
