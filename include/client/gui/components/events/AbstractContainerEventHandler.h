#pragma once

#include "ContainerEventHandler.h"

class AbstractContainerEventHandler : public ContainerEventHandler {
		GuiEventListener* mFocused;
		bool dragging;

	public:
		bool isDragging() override { return dragging; }
		void setDragging(bool dragging) override { dragging = dragging; }
		GuiEventListener* getFocused() { return mFocused; }
		void setFocused(GuiEventListener* listener) {
			if (mFocused != nullptr)
				mFocused->setFocused(false);

			if (listener != nullptr)
				listener->setFocused(true);

			mFocused = listener;
		}
};