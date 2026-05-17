// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Feature 1: Basic storage helper used in exercises
contract Feature1 {
    uint256 public value;

    function setValue(uint256 _v) public {
        value = _v;
    }
}
