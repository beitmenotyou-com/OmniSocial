// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract GrantLauncher {
    struct Grant {
        uint256 id;
        string title;
        string description;
        address proposer;
        uint256 goal;
        uint256 pledged;
        bool funded;
    }

    uint256 public nextId = 1;
    mapping(uint256 => Grant) public grants;

    event GrantProposed(uint256 id, string title, address proposer);
    event Pledged(uint256 id, address pledger, uint256 amount);
    event Funded(uint256 id);

    function proposeGrant(string calldata title, string calldata description, uint256 goal) external {
        grants[nextId] = Grant(nextId, title, description, msg.sender, goal, 0, false);
        emit GrantProposed(nextId, title, msg.sender);
        nextId++;
    }

    function pledge(uint256 id) external payable {
        Grant storage g = grants[id];
        require(!g.funded, "Already funded");
        g.pledged += msg.value;
        emit Pledged(id, msg.sender, msg.value);
        if (g.pledged >= g.goal) {
            g.funded = true;
            emit Funded(id);
            payable(g.proposer).transfer(g.pledged);
        }
    }
}
