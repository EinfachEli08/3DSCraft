#include "client/player/Player.h"

#include <stdbool.h>
#include <stdint.h>

#include "util/ButtonInput.h"

typedef int KeyCombo;
class PlayerController {
	public:
		PlayerController(Player* player);

		void update(InputData input, float dt);

		struct Scheme {
				KeyCombo forward, backward, strafeLeft, strafeRight;
				KeyCombo lookLeft, lookRight, lookUp, lookDown;

				KeyCombo placeBlock, breakBlock;
				KeyCombo jump;

				KeyCombo switchBlockLeft;
				KeyCombo switchBlockRight;

				KeyCombo openCmd;

				KeyCombo crouch;
		};

	private:
		Player* player;
		Scheme controlScheme;

		float breakPlaceTimeout;
		bool openedCmd;

		float flyTimer;
};
