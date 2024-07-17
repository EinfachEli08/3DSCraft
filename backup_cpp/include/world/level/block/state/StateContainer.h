#pragma once

#include "StateHolder.h"
#include <vector/vector.h>

template <typename O, typename S>
class StateContainer {
		const O* owner;
		template <typename T>
		const vector<Property<T>> properties;
};
