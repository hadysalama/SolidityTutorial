pragma solidity ^0.8.12;

//SPDX-License-Identifier: UNLICENSED

contract MyContract {
    uint256 public peopleCount;
    mapping(uint256 => Person) public people;

    uint256 openingTime = 1645079900;

    modifier onlyWhileOpen{
        require(block.timestamp >= openingTime);
        _;
    }

    struct Person{
        uint256 _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(
        string memory _firstName, 
        string memory _lastName) 
        public onlyWhileOpen {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
        peopleCount += 1;
    }
}