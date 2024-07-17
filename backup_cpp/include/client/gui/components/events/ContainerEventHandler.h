#pragma once

#include <vector/vector.h>

#include "GuiEventlistener.h"

class ContainerEventHandler : public GuiEventListener {
	public:
		virtual vector<GuiEventListener*>& children();

		virtual bool isDragging() = 0;

		virtual void setDragging(bool dragging) = 0;

		virtual GuiEventListener* getFocused() = 0;

		virtual void setFocused(GuiEventListener* listener) = 0;

		virtual void setFocused(bool focused) {}
		virtual bool isFocused();

		virtual GuiEventListener* getChildAt(touchPosition pos);
		virtual bool touchClicked(touchPosition pos, u32 keys) override;
		virtual bool touchReleased(touchPosition pos, u32 keys) override;
		virtual bool touchDragged(touchPosition pos1, u32 keys, touchPosition pos2) override;

		virtual bool keyPressed(u32 keys) override;
		virtual bool keyReleased(u32 keys) override;
};
