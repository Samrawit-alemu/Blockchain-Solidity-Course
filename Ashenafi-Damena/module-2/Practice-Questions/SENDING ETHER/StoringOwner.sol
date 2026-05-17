// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // Public state variables to store addresses
    address public owner;
    address public charity;

    // Modify the constructor to accept the charity address
    constructor(address _charity) {
        owner = msg.sender;
        charity = _charity;
    }

    // Special function to receive Ether when calldata is empty
    receive() external payable {}

    // Public payable function to tip the owner
    function tip() public payable {
        (bool success, ) = owner.call{value: msg.value}("");
        require(success, "Transfer to owner failed");
    }

    // Function to donate all remaining funds and destroy the contract
    function donate() public {
        // selfdestruct automatically forwards 100% of the contract's balance
        // We cast 'charity' to a 'payable' address as required by the opcode
        selfdestruct(payable(charity));
    }
}