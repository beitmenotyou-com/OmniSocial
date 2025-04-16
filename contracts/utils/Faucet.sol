// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Faucet {
    address public owner;
    uint256 public dripAmount = 0.01 ether;
    mapping(address => uint256) public lastDripTime;

    constructor() {
        owner = msg.sender;
    }

    function drip() external {
        require(block.timestamp > lastDripTime[msg.sender] + 1 days, "Drip limit: 1/day");
        lastDripTime[msg.sender] = block.timestamp;
        payable(msg.sender).transfer(dripAmount);
    }

    function fund() external payable {}

    function setDripAmount(uint256 amount) external {
        require(msg.sender == owner, "Only owner");
        dripAmount = amount;
    }
}
