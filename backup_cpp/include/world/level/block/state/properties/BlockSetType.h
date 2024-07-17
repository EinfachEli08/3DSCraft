#pragma once

#include "sounds/SoundEvent.h"
#include "world/level/block/SoundType.h"

class BlockSetType {
		const char* mName;
		bool canOpenByHand;
		const SoundType* mSoundType;
		const SoundEvent* mDoorClose;
		const SoundEvent* mDoorOpen;
		const SoundEvent* mTrapdoorClose;
		const SoundEvent* mTrapdoorOpen;
		const SoundEvent* mPressurePlateClickOff;
		const SoundEvent* mPressurePlateClickOn;
		const SoundEvent* mButtonClickOff;
		const SoundEvent* mButtonClickOn;

	public:
		BlockSetType(const char* name, bool canOpenByHand, const SoundType* soundType, const SoundEvent* doorClose,
					 const SoundEvent* doorOpen, const SoundEvent* trapdoorClose, const SoundEvent* trapdoorOpen,
					 const SoundEvent* pressurePlateClickOff, const SoundEvent* pressurePlateClickOn, const SoundEvent* buttonClickOff,
					 const SoundEvent* buttonClickOn)
			: mName(name),
			  canOpenByHand(canOpenByHand),
			  mSoundType(soundType),
			  mDoorClose(doorClose),
			  mDoorOpen(doorOpen),
			  mTrapdoorClose(trapdoorClose),
			  mTrapdoorOpen(trapdoorOpen),
			  mPressurePlateClickOff(pressurePlateClickOff),
			  mPressurePlateClickOn(pressurePlateClickOn),
			  mButtonClickOff(buttonClickOff),
			  mButtonClickOn(buttonClickOn) {}

	public:
		static const BlockSetType* IRON;
		static const BlockSetType* GOLD;
		static const BlockSetType* STONE;
		static const BlockSetType* POLISHED_BLACKSTONE;
		static const BlockSetType* OAK;
		static const BlockSetType* SPRUCE;
		static const BlockSetType* BIRCH;
		static const BlockSetType* ACACIA;
		static const BlockSetType* CHERRY;
		static const BlockSetType* JUNGLE;
		static const BlockSetType* DARK_OAK;
		static const BlockSetType* CRIMSON;
		static const BlockSetType* WARPED;
		static const BlockSetType* MANGROVE;
		static const BlockSetType* BAMBOO;
};
