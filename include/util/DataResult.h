#pragma once

template <typename T>
struct DataResult {	 // TODO: i didnt get the way this works yet...
		static T* success(T*) { return T != nullptr ? T : nullptr }
		static T* error(const char* error) { return nullptr; }	// TODO: Exceptions small and big
};