// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./simplestorage.sol";

contract StorageFactory is SimpleStorgae {
    
    SimpleStorgae[] public simplestoragearray;
    
    function createSimpleStorageContract() public{
    //   Create an object of SimpleStorgae contract.
       SimpleStorgae simpleStorage = new SimpleStorgae();
       simplestoragearray.push(simpleStorage);
    }
    
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        // address of the contract, and ABI.
        SimpleStorgae(address(simplestoragearray[_simpleStorageIndex])).store(_simpleStorageNumber);
    }
    
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorgae(address(simplestoragearray[_simpleStorageIndex])).retreive();
    }
}