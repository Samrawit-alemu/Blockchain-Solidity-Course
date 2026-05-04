// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // 1. Declare 'a' as a uint8 (holds values up to 255)
    uint8 public a = 150;

    // 2. Declare 'b' as a uint16 (holds values up to 65,535; must be at least 256)
    uint16 public b = 300;

    // 3. Declare 'sum' as a uint256
    uint256 public sum;

    constructor() {
        // Calculate the sum of a and b at deployment
        sum = a + b;
    }
}