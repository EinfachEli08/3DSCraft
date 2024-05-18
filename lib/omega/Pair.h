#pragma once

template <typename F, typename S>
class Pair {
	public:
		Pair() = default;
		Pair(const F& first, const S& second) : mFirst(first), mSecond(second) {}
		Pair(F& first, S& second) : mFirst(first), mSecond(second) {}

		const F& first() const { return mFirst; }
		const S& second() const { return mSecond; }

	private:
		F mFirst;
		S mSecond;
};