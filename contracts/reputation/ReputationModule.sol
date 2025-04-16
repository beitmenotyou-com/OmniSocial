// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ReputationModule {
    mapping(address => uint256) public reputation;

    event ReputationChanged(address indexed user, int256 change);

    function updateReputation(address user, int256 delta) external {
        if (delta >= 0) {
            reputation[user] += uint256(delta);
        } else {
            uint256 abs = uint256(-delta);
            if (reputation[user] >= abs) {
                reputation[user] -= abs;
            } else {
                reputation[user] = 0;
            }
        }
        emit ReputationChanged(user, delta);
    }
}
