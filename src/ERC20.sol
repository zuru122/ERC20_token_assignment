// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ERC20 {
    string tokenName;
    string tokenSymbol;
    uint256 tokenTotalSupply;
    address owner;

    
    constructor(string memory _tokenName, string memory _tokenSymbol, uint256 _totalSupply){
        owner = msg.sender;
        tokenName = _tokenName;
        tokenTotalSupply = _totalSupply;
        tokenSymbol = _tokenSymbol;
    }

    mapping(address => uint256) balance;

    function name() public view returns(string memory){
        return tokenName;
    }

    function symbol() public view returns(string memory){
        return tokenSymbol;
    }

    function decimals() public view returns(uint){
        return 1e18;
    }
    
    function totalSupply()public view returns(uint256){
        return tokenTotalSupply;
    }

    function 




}
