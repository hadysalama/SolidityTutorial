pragma solidity ^0.8.12;

//SPDX-License-Identifier: UNLICENSED

contract MyContract {
    string public value = "Hello World!"; //Can also be string public constant.
    bool public myBool = true;
    int public myInt = 1; //int4
    uint public myUint = 1; //uint4
    uint8 public myUint8 = 8;
    uint256 public myUint256 = 123456789101112;
}