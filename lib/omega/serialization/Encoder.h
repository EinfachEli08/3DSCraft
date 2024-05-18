#pragma once

template <typename T>
class DynamicOps;

template <typename A>
class Encoder {
		template <typename T>
		T* encode(A input, DynamicOps<T> ops, T prefix);
};