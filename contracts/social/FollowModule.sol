// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract FollowModule {
    mapping(address => mapping(address => bool)) public following;

    event Followed(address indexed follower, address indexed target);
    event Unfollowed(address indexed follower, address indexed target);

    function follow(address target) public {
        require(!following[msg.sender][target], "Already following");
        following[msg.sender][target] = true;
        emit Followed(msg.sender, target);
    }

    function unfollow(address target) public {
        require(following[msg.sender][target], "Not following");
        following[msg.sender][target] = false;
        emit Unfollowed(msg.sender, target);
    }
}
