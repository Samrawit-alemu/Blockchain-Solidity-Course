// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // Public state variable to store the owner's address
    address public owner;

    // The constructor runs exactly once when the contract is deployed
    constructor() {
        // Store the address of the account deploying the contract
        owner = msg.sender;
    }
}