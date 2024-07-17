#pragma once

#include <3ds.h>

#include "client/gui/components/TabOrderedElement.h"

class GuiEventListener : TabOrderedElement {
	public:
		virtual bool touchClicked(touchPosition pos, u32 keys) { return false; }
		virtual bool touchReleased(touchPosition pos, u32 keys) { return false; }
		virtual bool touchDragged(touchPosition pos1, u32 keys, touchPosition pos2) { return false; }
		virtual bool keyPressed(u32 keys) { return false; }
		virtual bool keyReleased(u32 keys) { return false; }
		virtual bool isAt(touchPosition pos) { return false; }
		virtual void setFocused(bool value);
		virtual bool isFocused();
};