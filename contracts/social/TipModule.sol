// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract TipModule {
    event TipSent(address indexed from, address indexed to, uint256 amount);

    function tip(address payable to) public payable {
        require(msg.value > 0, "No tip sent");
        to.transfer(msg.value);
        emit TipSent(msg.sender, to, msg.value);
    }
}
