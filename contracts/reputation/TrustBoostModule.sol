// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract TrustBoostModule {
    mapping(address => mapping(uint256 => bool)) public hasBoosted;
    mapping(uint256 => uint256) public boostScore;

    event Boosted(address indexed booster, uint256 postId);

    function boost(uint256 postId) external {
        require(!hasBoosted[msg.sender][postId], "Already boosted");
        hasBoosted[msg.sender][postId] = true;
        boostScore[postId]++;
        emit Boosted(msg.sender, postId);
    }

    function getBoostScore(uint256 postId) external view returns (uint256) {
        return boostScore[postId];
    }
}
