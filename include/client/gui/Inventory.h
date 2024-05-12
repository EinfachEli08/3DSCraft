#pragma once

#include "world/item/ItemStack.h"

#include "util/NumberUtils.h"

#define INVENTORY_QUICKSELECT_MAXSLOTS 9
#define INVENTORY_QUICKSELECT_HEIGHT (22 + 1)  // + 1 wegen dem Selector

inline int Inventory_QuickSelectCalcSlots() {
	return INVENTORY_QUICKSELECT_MAXSLOTS;
}
inline int Inventory_QuickSelectCalcWidth() {
	return 42 + (INVENTORY_QUICKSELECT_MAXSLOTS - 2) * 20;
}

void Inventory_DrawQuickSelect(int x, int y, ItemStack* stacks, int count, int* selected);

void Inventory_Draw(int x, int y, ItemStack* stacks, int count);