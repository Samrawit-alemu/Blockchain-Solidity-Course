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

    // Special function to receive Ether when calldata is empty
    receive() external payable {}

    // Public payable function to tip the owner
    function tip() public payable {
        // Transfer the incoming ether (msg.value) directly to the owner
        (bool success, ) = owner.call{value: msg.value}("");
        
        // Ensure the transfer was successful, revert the transaction if it failed
        require(success, "Transfer to owner failed");
    }
}