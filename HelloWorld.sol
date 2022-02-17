pragma solidity ^0.8.12;

/* SPDX-License-Identifier: UNLICENSED */

contract MyContract {
    string value;

    constructor() {
        value = "Hello World!";
    }

    function get() public returns(string memory) {
        return value;
    }

    function set(string memory _value) public {
        value = _value;
    }

}