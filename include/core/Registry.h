#pragma once

#include <omega/serialization/Keyable.h>

#include "core/IdMap.h"

template <typename T>
class Registry<T> : public Keyable, IdMap<T> {};