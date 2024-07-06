#pragma once

#include <stdbool.h>

#include "util/math/NumberUtils.h"
#include "world/level/block/Block.h"

struct ItemStack {
		Block block;
		u8 meta, amount;
};

#define ITEMSTACK_MAX (64)

inline bool ItemStack_Empty(ItemStack stack) {
	return stack.amount == 0;
}
inline void ItemStack_Transfer(ItemStack* src, ItemStack* dst) {
	if ((src->block == dst->block && src->meta == dst->meta) || dst->amount == 0) {
		int vol = MIN(src->amount, ITEMSTACK_MAX - dst->amount);
		src->amount -= vol;
		dst->amount += vol;
		dst->block = src->block;
		dst->meta  = src->meta;
	} else {
		ItemStack tmp = *src;
		*src          = *dst;
		*dst          = tmp;
	}
}