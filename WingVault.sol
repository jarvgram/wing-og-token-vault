
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract WingVault {
    IERC20 public token;
    address public owner;

    mapping(address => uint256) public stakedBalance;
    mapping(address => uint256) public lastStaked;

    constructor(address tokenAddress) {
        token = IERC20(tokenAddress);
        owner = msg.sender;
    }

    function stake(uint256 amount) external {
        require(amount > 0, "Amount must be greater than 0");
        token.transferFrom(msg.sender, address(this), amount);
        stakedBalance[msg.sender] += amount;
        lastStaked[msg.sender] = block.timestamp;
    }

    function getStaked(address user) external view returns (uint256) {
        return stakedBalance[user];
    }

    function withdraw(uint256 amount) external {
        require(stakedBalance[msg.sender] >= amount, "Insufficient balance");
        stakedBalance[msg.sender] -= amount;
        token.transfer(msg.sender, amount);
    }

    function getLastStaked(address user) external view returns (uint256) {
        return lastStaked[user];
    }
}
