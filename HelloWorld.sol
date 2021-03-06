pragma solidity ^0.8.12;

//SPDX-License-Identifier: UNLICENSED

contract MyContract {
    string public value = "Hello World!"; //Can also be string public constant.

    constructor() { //Initializes the contract. Runs first time only to set state variables.
        value = "Hello World!";
    }

    function get() public returns (string memory) {
        return value;
    }

    function set(string memory _value) public {
        value = _value;
    }
}
