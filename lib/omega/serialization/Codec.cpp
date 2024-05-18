#include "Codec.h"

template <typename A>
Codec<A>* Codec<A>::of(Encoder<A> encoder, Decoder<A> decoder) {
	return of(encoder, decoder,
			  "Codec["
			  "not implemented" /* + encoder + " " + decoder + */ "]");
}