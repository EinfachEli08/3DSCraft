#pragma once

#include "core/Direction.h"
#include "resources/ResourceLocation.h"

#include <3ds/types.h>
#include <bitset>

constexpr Direction::_ UPDATE_SHAPE_ORDER[Direction::COUNT] = { Direction::WEST,  Direction::EAST, Direction::NORTH,
																Direction::SOUTH, Direction::DOWN, Direction::UP };

class BlockBehavior {
		class Properties;
		class BlockStateBase;

		enum Bool : u8 {
			HasCollision,
			IsRandomlyTicking,
			COUNT
		};
		enum Int : u8 {
			SoundType,
			COUNT
		};
		enum Float : u8 {
			ExplosionResistance,
			Friction,
			SpeedFactor,
			JumpFactor,
			COUNT
		};
		std::bitset<Bool::COUNT> bools;
		u8 ints[Int::COUNT];
		float floats[Float::COUNT];

	protected:
		inline bool hasCollision() const { return bools[Bool::HasCollision]; }
		inline void setHasCollision(bool val) { bools[Bool::HasCollision] = val; }

		inline bool isRandomlyTicking() const { return bools[Bool::IsRandomlyTicking]; }
		inline void setIsRandomlyTicking(bool val) { bools[Bool::IsRandomlyTicking] = val; }

		inline int soundType() const { return ints[Int::SoundType]; }
		inline void setSoundType(int val) { ints[Int::SoundType] = val; }

		inline float explosionResistance() const { return floats[Float::ExplosionResistance]; }
		inline void setExplosionResistance(float val) { floats[Float::ExplosionResistance] = val; }

		inline float friction() const { return floats[Float::Friction]; }
		inline void setFriction(float val) { floats[Float::Friction] = val; }

		inline float speedFactor() const { return floats[Float::SpeedFactor]; }
		inline void setSpeedFactor(float val) { floats[Float::SpeedFactor] = val; }

		inline float jumpFactor() const { return floats[Float::JumpFactor]; }
		inline void setJumpFactor(float val) { floats[Float::JumpFactor] = val; }

		Properties* properties;
		ResourceLocation* drops;

	public:
		class Properties {
				enum propBool : u8 {
					HasCollision,
					RequiresCorrectToolForDrops,
					IsRandomlyTicking,
					IsAir,
					IgnitedByLava,
					ForceSolidOff,
					ForceSolidOn,
					SpawnParticlesOnBreak,
					Replacable,
					COUNT
				};
				enum propInt : u8 {
					SoundType,
					PushReaction,
					Instrument,
					COUNT
				};
				enum propFloat : u8 {
					ExplosionResistance,
					DestroyTime,
					Friction,
					SpeedFactor,
					JumpFactor,
					COUNT
				};
				enum propFunc : u8 {
					MapColor,
					LightEmission,
					IsValidSpawn,
					IsRedstoneConductor,
					IsSuffocating,
					IsViewBlocking,
					HasPostProcess,
					OffsetFunction,
					COUNT
				};

				std::bitset<propBool::COUNT> propBools;
				u8 propInts[propInt::COUNT];
				float propFloats[propFloat::COUNT];
				uintptr_t propFuncs[propFunc::COUNT];

				ResourceLocation drops;

			protected:
				inline bool hasCollision() const { return propBools[propBool::HasCollision]; }
				inline void setHasCollision(bool val) { propBools[propBool::HasCollision] = val; }

				inline bool requiresCorrectToolForDrops() const { return propBools[propBool::RequiresCorrectToolForDrops]; }
				inline void setRequiresCorrectToolForDrops(bool val) { propBools[propBool::RequiresCorrectToolForDrops] = val; }

				inline bool isRandomlyTicking() const { return propBools[propBool::IsRandomlyTicking]; }
				inline void setIsRandomlyTicking(bool val) { propBools[propBool::IsRandomlyTicking] = val; }

				inline bool isAir() const { return propBools[propBool::IsAir]; }
				inline void setIsAir(bool val) { propBools[propBool::IsAir] = val; }

				inline bool ignitedByLava() const { return propBools[propBool::IgnitedByLava]; }
				inline void setIgnitedByLava(bool val) { propBools[propBool::IgnitedByLava] = val; }

				inline bool forceSolidOff() const { return propBools[propBool::ForceSolidOff]; }
				inline void setForceSolidOff(bool val) { propBools[propBool::ForceSolidOff] = val; }

				inline bool forceSolidOn() const { return propBools[propBool::ForceSolidOn]; }
				inline void setForceSolidOn(bool val) { propBools[propBool::ForceSolidOn] = val; }

				inline bool spawnParticlesOnBreak() const { return propBools[propBool::SpawnParticlesOnBreak]; }
				inline void setSpawnParticlesOnBreak(bool val) { propBools[propBool::SpawnParticlesOnBreak] = val; }

				inline bool replacable() const { return propBools[propBool::Replacable]; }
				inline void setReplacable(bool val) { propBools[propBool::Replacable] = val; }

				inline int soundType() const { return propInts[propInt::SoundType]; }
				inline void setSoundType(int val) { propInts[propInt::SoundType] = val; }

				inline int pushReaction() const { return propInts[propInt::PushReaction]; }
				inline void setPushReaction(int val) { propInts[propInt::PushReaction] = val; }

				inline int instrument() const { return propInts[propInt::Instrument]; }
				inline void setInstrument(int val) { propInts[propInt::Instrument] = val; }

				inline float explosionResistance() const { return propFloats[propFloat::ExplosionResistance]; }
				inline void setExplosionResistance(float val) { propFloats[propFloat::ExplosionResistance] = val; }

				inline float destroyTime() const { return propFloats[propFloat::DestroyTime]; }
				inline void setDestroyTime(float val) { propFloats[propFloat::DestroyTime] = val; }

				inline float friction() const { return propFloats[propFloat::Friction]; }
				inline void setFriction(float val) { propFloats[propFloat::Friction] = val; }

				inline float speedFactor() const { return propFloats[propFloat::SpeedFactor]; }
				inline void setSpeedFactor(float val) { propFloats[propFloat::SpeedFactor] = val; }

				inline float jumpFactor() const { return propFloats[propFloat::JumpFactor]; }
				inline void setJumpFactor(float val) { propFloats[propFloat::JumpFactor] = val; }
		};

		class BlockStateBase {
				enum stateBool : u8 {
					IsAir,
					IgnitedByLava,
					RequiresCorrectToolForDrops,
					SpawnParticlesOnBreak,
					Replacable,
					IsRandomlyTicking,
					COUNT
				};
				enum stateInt : u8 {
					LightEmission,
					PushReaction,
					MapColor,
					COUNT
				};
				enum stateFloat : u8 {
					DestroySpeed,
					COUNT
				};
				enum stateFunc : u8 {
					IsRedstoneConductor,
					IsSuffocating,
					IsViewBlocking,
					HasPostProcess,
					COUNT
				};

				std::bitset<stateBool::COUNT> stateBools;
				u8 stateInts[stateInt::COUNT];
				float stateFloats[stateFloat::COUNT];
				uintptr_t stateFuncs[stateFunc::COUNT];

			protected:
				inline bool isAir() const { return stateBools[stateBool::IsAir]; }
				inline void setIsAir(bool val) { stateBools[stateBool::IsAir] = val; }

				inline bool ignitedByLava() const { return stateBools[stateBool::IgnitedByLava]; }
				inline void setIgnitedByLava(bool val) { stateBools[stateBool::IgnitedByLava] = val; }

				inline bool requiresCorrectToolForDrops() const { return stateBools[stateBool::RequiresCorrectToolForDrops]; }
				inline void setRequiresCorrectToolForDrops(bool val) { stateBools[stateBool::RequiresCorrectToolForDrops] = val; }

				inline bool spawnParticlesOnBreak() const { return stateBools[stateBool::SpawnParticlesOnBreak]; }
				inline void setSpawnParticlesOnBreak(bool val) { stateBools[stateBool::SpawnParticlesOnBreak] = val; }

				inline bool replacable() const { return stateBools[stateBool::Replacable]; }
				inline void setReplacable(bool val) { stateBools[stateBool::Replacable] = val; }

				inline bool isRandomlyTicking() const { return stateBools[stateBool::IsRandomlyTicking]; }
				inline void setIsRandomlyTicking(bool val) { stateBools[stateBool::IsRandomlyTicking] = val; }

				inline int lightEmission() const { return stateInts[stateInt::LightEmission]; }
				inline void setLightEmission(int val) { stateInts[stateInt::LightEmission] = val; }

				inline int pushReaction() const { return stateInts[stateInt::PushReaction]; }
				inline void setPushReaction(int val) { stateInts[stateInt::PushReaction] = val; }

				inline int mapColor() const { return stateInts[stateInt::MapColor]; }
				inline void setMapColor(int val) { stateInts[stateInt::MapColor] = val; }

				inline float destroySpeed() const { return stateFloats[stateFloat::DestroySpeed]; }
				inline void setDestroySpeed(float val) { stateFloats[stateFloat::DestroySpeed] = val; }
		};
};