// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // 1. Fixed-size byte array: perfectly fits "Hello World" (11 bytes)
    bytes32 public msg1 = "Hello World";

    // 2. Dynamic string array: contains a long phrase that easily exceeds 32 bytes
    string public msg2 = "This string literal is explicitly designed to be much longer than thirty-two bytes to demonstrate dynamic allocation.";
}