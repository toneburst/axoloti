#ifndef TONEBURST_UTILS_h
#define TONEBURST_UTILS_h

// Scale positive input to range out_min > out_max
__attribute__ ( ( always_inline ) ) __STATIC_INLINE int32_t map32(int32_t val, int32_t out_min, int32_t out_max) {
	float x = (float)val;
	float outMin = (float)out_min;
	float outMax = (float)out_max;
	return (int32_t)(x * (outMax - outMin) / 0x07FFFFFF + outMin);
};

// Exponential interpolation for 27-bit param/inlet values
__attribute__ ( ( always_inline ) ) __STATIC_INLINE int32_t interpLog32(int32_t val) {
	// Transform inlet val to float in 0 - 1 range
	float inf = val * (float)(1.0f / (1 << 27));
	float curve = 1 - (1 - inf) * (1 - inf);
	return (int32_t)(curve * (float)(1 << 27));
}


#endif
