// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Voting {

    struct Proposal {
        address target;
        bytes data;
        uint yesCount;
        uint noCount;
        bool executed;
    }

    Proposal[] public proposals;

    mapping(uint => mapping(address => bool)) public hasVoted;
    mapping(uint => mapping(address => bool)) public voteChoice;

    mapping(address => bool) public isMember;

    event ProposalCreated(uint proposalId);
    event VoteCast(uint proposalId, address voter);

    constructor(address[] memory initialMembers) {
        isMember[msg.sender] = true;

        for (uint i = 0; i < initialMembers.length; i++) {
            isMember[initialMembers[i]] = true;
        }
    }

    function newProposal(address target, bytes calldata data) external {
        require(isMember[msg.sender], "Not a member");

        proposals.push(
            Proposal({
                target: target,
                data: data,
                yesCount: 0,
                noCount: 0,
                executed: false
            })
        );

        emit ProposalCreated(proposals.length - 1);
    }

    function castVote(uint proposalId, bool support) external {
        require(isMember[msg.sender], "Not a member");
        require(proposalId < proposals.length, "Invalid proposal");

        Proposal storage p = proposals[proposalId];

        require(!p.executed, "Already executed");

        // adjust previous vote if changing
        if (hasVoted[proposalId][msg.sender]) {
            bool previous = voteChoice[proposalId][msg.sender];

            if (previous) {
                p.yesCount--;
            } else {
                p.noCount--;
            }
        }

        // record new vote
        hasVoted[proposalId][msg.sender] = true;
        voteChoice[proposalId][msg.sender] = support;

        if (support) {
            p.yesCount++;
        } else {
            p.noCount++;
        }

        emit VoteCast(proposalId, msg.sender);

        // EXECUTION CONDITION
        if (p.yesCount >= 10 && !p.executed) {
            p.executed = true;

            (bool success, ) = p.target.call(p.data);
            require(success, "Execution failed");
        }
    }
}