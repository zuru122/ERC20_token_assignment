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

    function decimals() public view returns(uint8){
        return 18;
    }
    
    function totalSupply()public view returns(uint256){
        return tokenTotalSupply;
    }

    function balanceOf(address _owner) public view returns(uint256){
        return balance[_owner];
    }


    event Transfer(address indexed _owner  address indexed _to, uint256 _value);

    function transfer(address _to, uint256 _value)public returns(bool){
        require(balance[msg.sender] >= _value, "Insufficient funds");
        balance[msg.sender] = balance[msg.sender] - _value;
        balance[_to] = balance[_to] + _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }




}
