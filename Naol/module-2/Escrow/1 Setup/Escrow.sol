// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Escrow {
    // The account that sends the funds to the contract
    address public depositor;

    // The account that will receive the funds after approval
    address public beneficiary;

    // The account that has the power to approve the transfer
    address public arbiter;
}