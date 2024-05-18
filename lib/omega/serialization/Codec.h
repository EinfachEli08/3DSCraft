#pragma once

#include "Decoder.h"
#include "Encoder.h"

template <typename A>
class Codec : public Encoder<A>, public Decoder<A> {
	public:
		static Codec<A>* of(Encoder<A> encoder, Decoder<A> decoder);
		static Codec<A>* of();
};