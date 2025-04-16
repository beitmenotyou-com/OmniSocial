// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ProposalModule {
    struct Proposal {
        uint256 id;
        string description;
        address proposer;
        uint256 votesFor;
        uint256 votesAgainst;
        bool executed;
    }

    uint256 public nextProposalId = 1;
    mapping(uint256 => Proposal) public proposals;

    event ProposalCreated(uint256 id, string description, address proposer);
    event Voted(uint256 id, bool support, address voter);

    function createProposal(string calldata desc) external {
        proposals[nextProposalId] = Proposal(nextProposalId, desc, msg.sender, 0, 0, false);
        emit ProposalCreated(nextProposalId, desc, msg.sender);
        nextProposalId++;
    }

    function vote(uint256 id, bool support) external {
        Proposal storage p = proposals[id];
        require(!p.executed, "Already executed");
        if (support) {
            p.votesFor++;
        } else {
            p.votesAgainst++;
        }
        emit Voted(id, support, msg.sender);
    }
}
