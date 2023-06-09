pragma solidity ^0.8.12;

//SPDX-License-Identifier: UNLICENSED

contract Token{
    string public name;
    mapping(address => uint256) public balances;

    constructor(string memory _name) {
        name = _name;
    }

    function mint() public virtual{
        balances[tx.origin]++;
    }
}

contract MyToken is Token {
    //string public override name = "MyCoin";
    string public symbol;
    address[] public owners;
    uint256 ownerCount;

    constructor(
        string memory _name, 
        string memory _symbol
        ) 
            Token(_name) 
            {
        symbol = _symbol;
    }
    function mint() public virtual override{
        super.mint();
        ownerCount++;
        owners.push(msg.sender);
    }

}