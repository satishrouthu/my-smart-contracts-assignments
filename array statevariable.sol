// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract satish{
  uint[]  arr;
  function AddElement(uint _num) public {
    arr.push(_num);
  }
  function storedata() public view returns(uint[] memory){
      return arr;
  }

}
