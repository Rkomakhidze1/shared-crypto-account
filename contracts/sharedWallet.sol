// SPDX-License-Identifier: MIT 
pragma solidity >=0.4.22 <=0.8.17;

contract SharedWallet {
    event AccountCreated(address[] indexed owners, uint256 indexed id, uint256 timestamp);
    event Deposit(address indexed user, uint256 indexed accountId, uint256 amount, uint256 timestamp);
    event WithdrawRequested(address indexed user, uint256 indexed accountId, uint256 indexed withdrawId, uint256 amount, uint256 timestamp);
    event Withdraw(uint256 indexed withdrawId, uint256 timestamp);
}