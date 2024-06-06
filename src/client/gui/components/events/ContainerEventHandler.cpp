#include "client/gui/components/events/ContainerEventHandler.h"

GuiEventListener* ContainerEventHandler::getChildAt(touchPosition pos) {
	for (GuiEventListener* listener : children()) {
		if (listener->isAt(pos))
			return listener;
	}

	return nullptr;
}
bool ContainerEventHandler::touchClicked(touchPosition pos, u32 keys) {
	for (GuiEventListener* listener : children()) {
		if (listener->touchClicked(pos, keys)) {
			setFocused(listener);
			if (!keys) {
				setDragging(true);
			}

			return true;
		}
	}
}
bool ContainerEventHandler::touchReleased(touchPosition pos, u32 keys) {
	setDragging(false);
	return getChildAt(pos)->touchReleased(pos, keys);
}
bool ContainerEventHandler::touchDragged(touchPosition pos1, u32 keys, touchPosition pos2) {
	return getFocused() != nullptr && isDragging() && !keys ? getFocused()->touchDragged(pos1, keys, pos2) : false;
}
bool ContainerEventHandler::keyPressed(u32 keys) {
	return getFocused() != nullptr && getFocused()->keyPressed(keys);
}
bool ContainerEventHandler::keyReleased(u32 keys) {
	return getFocused() != nullptr && getFocused()->keyReleased(keys);
}

bool ContainerEventHandler::isFocused() {
	return getFocused() != nullptr;
}