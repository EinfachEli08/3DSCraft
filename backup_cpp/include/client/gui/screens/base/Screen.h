#pragma once

#include "client/gui/components/events/AbstractContainerEventHandler.h"
#include "resources/ResourceLocation.h"

static const ResourceLocation cBackGroundLocation = ResourceLocation("textures/gui/options_background.t3x");

class Minecraft;
class Screen : public AbstractContainerEventHandler {
		vector<GuiEventListener*> mChildren;
		bool initialized;

	protected:
		const char* mTitle;
		// Font?

		Screen(const char* title) : mTitle(title) {}

		virtual void init() {}
		void setInitialFocus(GuiEventListener* listener);

	public:
		virtual void render(touchPosition pos, float partialTicks) {}
		virtual bool keyPressed(u32 keys);
		virtual bool canHome() { return true; }
		virtual void onClose();
		virtual void insertText(const char* text, bool value) {}
		virtual void tick() {}
		virtual void removed() {}
		virtual void added() {}
		virtual bool isPauseScreen();

		void initBase();
		const char* getTitle();
		vector<GuiEventListener*>& children() override { return mChildren; };
		void renderDirtBackground();
		// virtual Music getBackgroundMusic();
};
