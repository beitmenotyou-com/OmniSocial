// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract PostModule {
    struct Post {
        uint256 id;
        address author;
        string content;
        uint256 timestamp;
    }

    uint256 public nextPostId = 1;
    mapping(uint256 => Post) public posts;

    event PostCreated(uint256 indexed postId, address indexed author, string content, uint256 timestamp);

    function createPost(string calldata content) external {
        posts[nextPostId] = Post(nextPostId, msg.sender, content, block.timestamp);
        emit PostCreated(nextPostId, msg.sender, content, block.timestamp);
        nextPostId++;
    }
}
