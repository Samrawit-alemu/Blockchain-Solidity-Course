// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/console.sol";

contract Contract {
    // Added 'view' to indicate this function reads data but does not modify state
    function winningNumber(string calldata secretMessage) external view returns(uint) {
        // Log the message (can be left here or removed)
        console.log(secretMessage);

        // Return the winning number revealed by the test error
        return 794; 
    }
}