pragma solidity ^0.8.12;

//SPDX-License-Identifier: UNLICENSED

contract MyContract {
    string public value = "Hello World!"; //Can also be string public constant.
    bool public myBool = true;
    int public myInt = 1;
    uint public myUint = 1;
    uint8 public myUint8 = 8;
    uint256 public myUint256 = 123456789101112;

/*
    constructor() {
        value = "Hello World!";
    }

    function get() public returns(string memory) {
        return value;
    }
*/
    function set(string memory _value) public {
        value = _value;
    }

}