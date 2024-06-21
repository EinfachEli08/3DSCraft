#pragma once

template <typename F, typename S>
union Pair {
		struct {
				const F first;
				const S second;
		};
		Pair(const F& first, const S& second) : first(first), second(second) {}
};