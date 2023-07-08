// SPDX-License-Identifier: MIT 
pragma solidity >=0.4.22 <=0.8.17;

contract SharedWallet {
    event AccountCreated(address[] indexed owners, uint256 indexed id, uint256 timestamp);
    event Deposit(address indexed user, uint256 indexed accountId, uint256 amount, uint256 timestamp);
    event WithdrawRequested(address indexed user, uint256 indexed accountId, uint256 indexed withdrawId, uint256 amount, uint256 timestamp);
    event Withdraw(uint256 indexed withdrawId, uint256 timestamp);

    struct WithdrawRequest {
        address user;
        uint256 amount;
        uint256 numberOfApprovals;
        mapping(address => bool) ownersApproved;
        bool approved;
    }
    struct Account {
        address[] owners;
        uint256 balance;
        mapping(uint => WithdrawRequest) withdrawRequests;
    }
    mapping(uint => Account) accounts;
    mapping(address => uint[]) userAccounts;

    uint nextAccountId;
    uint nextWithdrawId;

    function deposit(uint accountId) external payable {

    }

    function createAccount(address[] calldata otherOwners) external  {

    }

    function requestWithrawl(uint accountId, uint amount) external payable {

    }

    function approveWithrawl(uint accountId, uint withdrawlId) external payable {

    }
    function withdraw(uint accountId, uint withdrawlId) external payable {

    }
    function getBalance(uint accountId) public view returns (uint) {

    }
    function getOwners(uint accountId) public view returns (address[] memory) {

    }
    function getApprovals(uint accountId, uint withdrawId) public view returns (uint) {

    }
}