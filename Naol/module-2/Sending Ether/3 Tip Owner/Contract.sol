// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;

    constructor() {
        // Store the deployer as the owner
        owner = msg.sender;
    }

    // This allows the contract to receive plain Ether (for testSendEther)
    receive() external payable {}

    // The tip function
    function tip() public payable {
        // Use the .call method to send the received ether (msg.value) to the owner
        (bool success, ) = owner.call{ value: msg.value }("");
        
        // Ensure the transfer was successful
        require(success, "Transfer failed.");
    }
}