// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // Declare a public unsigned integer state variable
    uint256 public x;

    // The constructor takes a uint256 parameter and sets the value of x
    constructor(uint256 _x) {
        x = _x;
    }

    // External function to increment x by 1
    function increment() external {
        x += 1;
    }

    // External view function that returns the sum of x and an input parameter
    function add(uint256 _y) external view returns (uint256) {
        return x + _y;
    }
}