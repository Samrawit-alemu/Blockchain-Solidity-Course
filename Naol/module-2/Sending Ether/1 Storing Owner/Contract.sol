// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // Create a public address state variable called owner
    address public owner;

    // The constructor runs once during deployment
    constructor() {
        // msg.sender is a global variable representing the address 
        // that is currently interacting with the contract (the deployer)
        owner = msg.sender;
    }
}