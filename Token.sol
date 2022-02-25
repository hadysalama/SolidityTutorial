pragma solidity ^0.8.12;

//SPDX-License-Identifier: UNLICENSED

contract MyContract {
    mapping(address => uint256) public balances;
    address payable wallet;

    event Purchase(
        address indexed _buyer,
        uint _amount
    );

    constructor(address payable _wallet){
        wallet = _wallet;
    }
    
    receive() external payable {
        buyToken();
    }

    /*
    fallback() external payable {
        buyToken();
    }
    */

    function buyToken() public payable{
        //buy a token
        balances[msg.sender] += 1;
        //send ether to the wallet
        wallet.transfer(msg.value);
        emit Purchase(msg.sender, 1);
    }
}