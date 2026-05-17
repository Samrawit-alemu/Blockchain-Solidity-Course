// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // Define the Choices enum used in the test
    enum Choices { Yes, No }

    // Mapping to track whether an address has voted
    // address => true (voted) / false (not voted)
    mapping(address => bool) public hasVoted;

    function createVote(Choices _choice) external {
        // 1. Check if the sender has already voted
        // If hasVoted[msg.sender] is true, the transaction will revert
        require(!hasVoted[msg.sender], "You have already voted!");

        // 2. Mark the sender as having voted in storage
        hasVoted[msg.sender] = true;

        // Note: In a full voting contract, you would likely increment 
        // a counter here based on the _choice (Yes or No).
    }
}