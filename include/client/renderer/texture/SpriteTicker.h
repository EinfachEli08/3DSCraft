#pragma once

class SpriteTicker {
	protected:
		virtual void tickAndUpload(int first, int second) = 0;

		virtual void close();
};