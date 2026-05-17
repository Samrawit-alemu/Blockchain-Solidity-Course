// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // 1. Changed visibility from external to public so it can be called internally
    function double(uint256 _x) public pure returns (uint256) {
        return _x * 2;
    }

    // 2. Created an overloaded double function that takes two parameters
    function double(uint256 _x, uint256 _y) external pure returns (uint256, uint256) {
        // We call our internal public double() function for each parameter 
        // and return the results together as a tuple
        return (double(_x), double(_y));
    }
}