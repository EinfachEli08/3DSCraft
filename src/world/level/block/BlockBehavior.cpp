#include "world/level/block/BlockBehavior.h"
#include "world/level/material/PushReaction.h"

BlockBehavior::Properties::Properties() {
	setFriction(0.6F);
	setSpeedFactor(1.0F);
	setJumpFactor(1.0F);
	setPushReaction(PushReaction::NORMAL);
	setSpawnParticlesOnBreak(true);
	setInstrument(0);  // not implemented
};