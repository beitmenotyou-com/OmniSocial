// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract BoardModule {
    struct Board {
        string name;
        address creator;
        uint256 createdAt;
    }

    uint256 public nextBoardId = 1;
    mapping(uint256 => Board) public boards;

    event BoardCreated(uint256 indexed boardId, string name, address indexed creator);

    function createBoard(string calldata name) external {
        boards[nextBoardId] = Board(name, msg.sender, block.timestamp);
        emit BoardCreated(nextBoardId, name, msg.sender);
        nextBoardId++;
    }
}
