#ifndef CANTO_TABLES_H
#define CANTO_TABLES_H

// Sinewave table
extern const int8_t sinCalc[];

// Squarewave table
extern const int8_t sqrCalc[];

// Formant table
extern const int8_t formantTable[][7];

// Vowel indices
extern const int8_t vowels[];

// Sample-rate reduction divisor table
extern const int8_t srateTable[];

#include "tables.c"

#endif