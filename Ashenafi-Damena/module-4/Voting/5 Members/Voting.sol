// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {
    struct Proposal {
        address target;
        bytes data;
        uint yesCount;
        uint noCount;
    }

    Proposal[] public proposals;
    
    // Mapping to store authorized members
    mapping(address => bool) public members;

    event ProposalCreated(uint proposalId);
    event VoteCast(uint proposalId, address voter);

    constructor(address[] memory _initialMembers) {
        // 1. Add the deployer to the members list
        members[msg.sender] = true;

        // 2. Add all addresses from the array to the members list
        for(uint i = 0; i < _initialMembers.length; i++) {
            members[_initialMembers[i]] = true;
        }
    }

    function newProposal(address _target, bytes calldata _data) external {
        // Check if the sender is a member
        require(members[msg.sender], "Only members can create proposals");

        proposals.push(Proposal(_target, _data, 0, 0));
        emit ProposalCreated(proposals.length - 1);
    }

    function castVote(uint _proposalId, bool _supports) external {
        // Check if the sender is a member
        require(members[msg.sender], "Only members can vote");

        if (_supports) {
            proposals[_proposalId].yesCount++;
        } else {
            proposals[_proposalId].noCount++;
        }

        emit VoteCast(_proposalId, msg.sender);
    }
}