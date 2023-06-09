pragma solidity ^0.8.12;

//SPDX-License-Identifier: UNLICENSED

contract Token{
    string public name;
    mapping(address => uint256) public balances;

    function mint() public{
        balances[tx.origin]++;
    }
}

contract MyContract {
    address payable wallet;
    address public token;

    constructor(address payable _wallet, address _token){
        wallet = _wallet;
        token = _token;
    }
    
    receive() external payable {
        buyToken();
    }

    function buyToken() public payable{
        Token _token = Token(address(token));
        _token.mint();
        wallet.transfer(msg.value);
    }
}