// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {
    struct Proposal {
        address target;
        bytes data;
        int yesCount;
        int noCount;
    }

    Proposal[] public proposals;

    // 1. Define the events
    event ProposalCreated(uint proposalId);
    event VoteCast(uint proposalId, address voter);

    function newProposal(address _target, bytes calldata _data) external {
        // Create the new proposal and add it to the array
        proposals.push(Proposal(_target, _data, 0, 0));
        
        // The ID is the index in the array
        uint proposalId = proposals.length - 1;

        // 2. Emit the ProposalCreated event
        emit ProposalCreated(proposalId);
    }

    function castVote(uint _proposalId, bool _supports) external {
        // Logic to update the vote count (simplified)
        if (_supports) {
            proposals[_proposalId].yesCount++;
        } else {
            proposals[_proposalId].noCount++;
        }

        // 3. Emit the VoteCast event
        emit VoteCast(_proposalId, msg.sender);
    }
}