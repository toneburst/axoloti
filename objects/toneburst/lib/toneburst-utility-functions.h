#ifndef TONEBURST_UTILS_h
#define TONEBURST_UTILS_h

	// Scale positive input to range out_min > out_max (doesn't work with signed ints?)
	__attribute__ ( ( always_inline ) ) __STATIC_INLINE int32_t mapU32(int32_t val, int32_t out_min, int32_t out_max) {
		// Convert input vals to float
		float x = (float)val;
		float outMin = (float)out_min;
		float outMax = (float)out_max;
		// Return val in correct 27-bit integer range
		return (int32_t)(x * (outMax - outMin) / 0x07FFFFFF + outMin);
	};
	
	// Scale input to 0 > out_max range
	__attribute__ ( ( always_inline ) ) __STATIC_INLINE int32_t scaleU32(int32_t val, int32_t out_max) {
		return (int32_t)(float)val * (float)out_max / 0x07FFFFFF;
	}

	// Logarithmic interpolation for 27-bit param/inlet values
	__attribute__ ( ( always_inline ) ) __STATIC_INLINE int32_t curveLog32(int32_t val) {
		// Transform inlet val to float in 0 - 1 range
		float inf = val * (float)(1.0f / (1 << 27));
		float curve = 1 - (1 - inf) * (1 - inf);
		// Return val in correct 27-bit integer range
		return (int32_t)(curve * (float)(1 << 27));
	}

	// Exponential interpolation for 27-bit param/inlet values
	__attribute__ ( ( always_inline ) ) __STATIC_INLINE int32_t curveExp32(int32_t val) {
		// Transform inlet val to float in 0 - 1 range
		float inf = val * (float)(1.0f / (1 << 27));
		float curve = inf*inf;
		// Return val in correct 27-bit integer range
		return (int32_t)(curve * (float)(1 << 27));
	}

	// 8-Bit clamp val to range min > max
	__attribute__ ( ( always_inline ) ) __STATIC_INLINE int8_t clamp8(int8_t val, int8_t min, int8_t max) {
		return (val <= min) ? min : (val >= max) ? max : val;
	}

	// 16-Bit clamp val to range min > max
	__attribute__ ( ( always_inline ) ) __STATIC_INLINE int16_t clamp16(int16_t val, int16_t min, int16_t max) {
		return (val <= min) ? min : (val >= max) ? max : val;
	}

	// 32-Bit clamp val to range min > max
	__attribute__ ( ( always_inline ) ) __STATIC_INLINE int32_t clamp32(int32_t val, int32_t min, int32_t max) {
		return (val <= min) ? min : (val >= max) ? max : val;
	}

	// 16-bit xfade
	// (adapted from Factory xfade object)
	__attribute__ ( ( always_inline ) ) __STATIC_INLINE int16_t xfade16(int16_t a, int16_t b, uint16_t x) {
		int16_t ccompl = (1 << 15) - x;
		int32_t result = (int32_t)b * x;
		result += (int32_t)a * ccompl;
		return result >> 16;
	}
	
	// 32-bit slew function, with pointer to state variable
	// (Adapted from Factory glide object)
	__attribute__ ( ( always_inline ) ) __STATIC_INLINE int32_t slew32(int32_t target, int32_t *state, int32_t slewTime, bool enable) {
		if (enable && slewTime > 0) {
			*state = ___SMMLA(*state - target, (-1 << 26) + (slewTime >> 1), *state);
			return *state;
		} else {
			// Update slew state so we don't get a jump next time slew is enabled
			*state = target;
			return target;
		}
	}
	
	// 32-bit square root
	// (Adapted from Factory sqrt object)
	__attribute__ ( ( always_inline ) ) __STATIC_INLINE int32_t sqrt32(int32_t val) {
		int32_t ai = (val > 0) ? val : -val;
		float aif = ai;
		aif = _VSQRTF(aif);
		return (int)aif;
	}

#endif
