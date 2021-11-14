// SPDX-License-Identifier: MIT


pragma solidity >=0.6.0 <0.9.0;
contract SimpleStorgae{
    uint256 favoriteNumber;
    // bool favoriteBoolean = false;
    // string favoriteString = "String";
    // int256 favoriteInt = -9;
    // address favoriteAddress = 0x52F6a379A3d7a1822473f100b3A329aFC2953652
    // bytes32 favoriteBytes = "cat"; 
    
    struct People{
        uint256 favoriteNumber;
        string name;
    }
    
    // People public person = People({favoriteNumber:2, name:"Ammar"});
    
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    // view and pure
    // views - enable us to read the state.
    // pure - does some type of math, not actually saving the state.
    function retreive() public view returns(uint256){
        return favoriteNumber;
    }
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People( _favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}