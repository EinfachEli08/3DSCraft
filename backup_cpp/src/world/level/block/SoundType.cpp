#include "world/level/block/SoundType.h"

const SoundType* SoundType::EMPTY =
	new SoundType(1.0F, 1.0F, SoundEvents::EMPTY, SoundEvents::EMPTY, SoundEvents::EMPTY, SoundEvents::EMPTY, SoundEvents::EMPTY);