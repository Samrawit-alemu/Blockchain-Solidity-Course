// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function makeContact(address hero) external {
        // Send arbitrary calldata that does not match any function selector
        (bool success, ) = hero.call(hex"12345678");
        require(success);
    }
}