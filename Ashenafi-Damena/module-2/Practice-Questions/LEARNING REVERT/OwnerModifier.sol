// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    uint public configA;
    uint public configB;
    uint public configC;
    address public owner;

    // Custom error for gas optimization
    error NotOwner();

    constructor() {
        owner = msg.sender;
    }

    function setA(uint _configA) public onlyOwner {
        configA = _configA;
    }

    function setB(uint _configB) public onlyOwner {
        configB = _configB;
    }

    function setC(uint _configC) public onlyOwner {
        configC = _configC;
    }

    modifier onlyOwner() {
        // 1. Check if the caller is the owner. If not, revert.
        if (msg.sender != owner) {
            revert NotOwner();
        }
        
        // 2. The underscore (_) is replaced by the actual target function body
        _;
    }
}