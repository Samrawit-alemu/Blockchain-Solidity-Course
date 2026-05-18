// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // State variable to store the deployer's address
    address public owner;

    // Custom error for gas-efficient access restriction
    error NotOwner(address caller);

    // The constructor requires a 1 ether deposit and sets the owner
    constructor() payable {
        if (msg.value < 1 ether) {
            revert("Must deposit at least 1 Ether");
        }
        // Store the deployer's address
        owner = msg.sender;
    }

    // Function to withdraw all funds from the contract
    function withdraw() public {
        // Access Control: Revert if anyone other than the owner calls this
        if (msg.sender != owner) {
            revert NotOwner(msg.sender);
        }

        // Get the total balance currently held by the contract
        uint256 contractBalance = address(this).balance;

        // Perform the transfer of all remaining funds to the owner
        (bool success, ) = owner.call{value: contractBalance}("");
        require(success, "Withdrawal failed");
    }
}