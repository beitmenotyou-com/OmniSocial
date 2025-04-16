// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SlashingAppeals {
    struct Appeal {
        uint256 id;
        address appellant;
        string reason;
        bool resolved;
    }

    uint256 public nextAppealId = 1;
    mapping(uint256 => Appeal) public appeals;

    event AppealSubmitted(uint256 id, address indexed user, string reason);

    function submitAppeal(string calldata reason) external {
        appeals[nextAppealId] = Appeal(nextAppealId, msg.sender, reason, false);
        emit AppealSubmitted(nextAppealId, msg.sender, reason);
        nextAppealId++;
    }
}
