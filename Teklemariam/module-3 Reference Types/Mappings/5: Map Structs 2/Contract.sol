// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    struct User {
        uint balance;
        bool isActive;
    }
    
    mapping(address => User) public users;
    
    function createUser() external {
        require(users[msg.sender].balance == 0, "User already exists");
        users[msg.sender] = User({
            balance: 100,
            isActive: true
        });
    }
    
    function transfer(address recipient, uint amount) external {
        // Ensure both sender and recipient have active users
        require(users[msg.sender].isActive, "Sender does not have an active account");
        require(users[recipient].isActive, "Recipient does not have an active account");
        
        // Ensure sender has enough balance
        require(users[msg.sender].balance >= amount, "Insufficient balance");
        
        // Transfer the amount
        users[msg.sender].balance -= amount;
        users[recipient].balance += amount;
    }
}