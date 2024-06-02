#pragma once

#include "sounds/SoundEvent.h"
#include "sounds/SoundEvents.h"

class SoundType {
		const SoundEvent* mBreakSound;
		const SoundEvent* mStepSound;
		const SoundEvent* mPlaceSound;
		const SoundEvent* mHitSound;
		const SoundEvent* mFallSound;

	public:
		const float mVolume;
		const float mPitch;

		SoundType(float volume, float pitch, const SoundEvent* breakSound, const SoundEvent* stepSound, const SoundEvent* placeSound,
				  const SoundEvent* hitSound, const SoundEvent* fallSound)
			: mVolume(volume),
			  mPitch(pitch),
			  mBreakSound(breakSound),
			  mStepSound(stepSound),
			  mPlaceSound(placeSound),
			  mHitSound(hitSound),
			  mFallSound(fallSound) {}

		float getVolume() const { return mVolume; }
		float getPitch() const { return mPitch; }
		const SoundEvent* getBreakSound() const { return mBreakSound; }
		const SoundEvent* getStepSound() const { return mStepSound; }
		const SoundEvent* getPlaceSound() const { return mPlaceSound; }
		const SoundEvent* getHitSound() const { return mHitSound; }
		const SoundEvent* getFallSounds() const { return mFallSound; }

	public:
		static const SoundType* EMPTY;
};