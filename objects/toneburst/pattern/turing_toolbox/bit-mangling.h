

uint16_t rotate_right(uint16_t val, uint8_t shift) {
	return (val << shift) | (val >> (15 - shift));
}

// Toggle bit x
// http://stackoverflow.com/questions/47981/how-do-you-set-clear-and-toggle-a-single-bit-in-c-c
uint16_t togglebitx(uint16_t val, uint8_t x) {
	return val ^= 1 << x;
}

// Reverse bit-order of 16-bit word
// http://stackoverflow.com/questions/2602823/in-c-c-whats-the-simplest-way-to-reverse-the-order-of-bits-in-a-byte
uint16_t reversebits16(uint16_t val) {
    uint16_t reversed = val;
    for(uint8_t i = 0; i < 16; i++)
        reversed |= ((val >> i) & 1) << (15 - i);
    return reversed;
}
