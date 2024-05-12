#pragma once

class ResourceManager;

class AbstractTexture {
	public:
		int getId();
		void releaseId();
		void bind();

		void load(ResourceManager resMan);

		virtual void close() = 0;

	protected:
		int mId = -1;
		bool isBlur;
		bool isMipmap;
};