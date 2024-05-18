#pragma once

#include <omega/Pair.h>

template <typename T>
class DynamicOps;

template <typename A>
class Decoder {
		template <typename T>
		Pair<A, T> encode(DynamicOps<T> ops, T input);
};