// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract QuestModule {
    struct Quest {
        uint256 id;
        string description;
        address creator;
        uint256 reward;
        bool claimed;
    }

    uint256 public nextQuestId = 1;
    mapping(uint256 => Quest) public quests;

    event QuestCreated(uint256 id, string description, uint256 reward);
    event QuestCompleted(uint256 id, address completer);

    function createQuest(string calldata desc) external payable {
        require(msg.value > 0, "Reward must be > 0");
        quests[nextQuestId] = Quest(nextQuestId, desc, msg.sender, msg.value, false);
        emit QuestCreated(nextQuestId, desc, msg.value);
        nextQuestId++;
    }

    function completeQuest(uint256 id, address completer) external {
        Quest storage q = quests[id];
        require(!q.claimed, "Already claimed");
        q.claimed = true;
        emit QuestCompleted(id, completer);
        payable(completer).transfer(q.reward);
    }
}
