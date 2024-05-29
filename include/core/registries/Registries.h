#pragma once

#include "core/Registry.h"

class Block;
class SoundEvent;

struct Registries {
		static const ResourceKey<Registry<Block>> BLOCK;
		static const ResourceKey<Registry<SoundEvent>> SOUND_EVENT;
};
