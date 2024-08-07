// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // Solidity Version

contract SimpleStorage {
    
    uint256 myFavouriteNumber; // Defaults to 0
    // uint256[] listOfFavouriteNumbers; // Array [0, 1, 2]
    
    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    // Dynamic Array
    Person[] public listOfPersons; //[]

    mapping(string => uint256) public nameToFavouriteNumber;


    // Static Array: can only have a length of 3
    // Person[3] public listOfPersons; //[]


    // Person public pat = Person({favouriteNumber: 7, name: "Pat"});
    // Person public sam = Person({favouriteNumber: 4, name: "Sam"});
    // Person public leslie = Person({favouriteNumber: 34, name: "Leslie"});

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return myFavouriteNumber;
    }


    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPersons.push( Person(_favouriteNumber, _name) );
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138