// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract AddAndSetElement{ 
uint[] arr;
      function Add (uint _number) public {
           arr.push(_number);
      }
      function Set(uint _range) public returns(uint[] memory){
        for (uint i=1; i<=_range;i++){
          arr.push(i);
        }
        return arr;
      }
      function Get() public view returns(uint[] memory){
        return arr;
     }
 }