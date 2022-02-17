pragma solidity ^0.8.12;

//SPDX-License-Identifier: UNLICENSED

contract MyContract {
    enum State {
        Waiting,
        Ready,
        Active
    }
    State public state;

    constructor() {
        state = State.Waiting;
    }

    function activate() public {
        state = State.Active;
    }

    function isActive() public view returns (bool) {
        return state == State.Active;
    }
}
