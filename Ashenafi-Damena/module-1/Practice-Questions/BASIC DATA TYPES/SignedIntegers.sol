// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // 1. Declare 'a' as a positive int8
    int8 public a = 10;

    // 2. Declare 'b' as a negative int8
    int8 public b = -15;

    // 3. Declare 'difference' as an int16
    int16 public difference;

    constructor() {
        // Absolute difference: subtract the negative value from the positive value
        // We implicitly upcast the math calculation to match the int16 type
        difference = a - b; 
    }
}