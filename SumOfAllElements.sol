// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SumofElements{
  uint[]  arr;
  function sum(uint _number) public pure returns(uint){
    uint Totalsum;
     for (uint i=0;i<=_number;i++){
           Totalsum+=i;
     }
         return Totalsum;
  }

  function AddEven(uint _num) public  returns(uint[] memory){
    for (uint i=0; i<=_num;i++){
      if (i%2==0){
           arr.push(i);
      }
    }
    return arr;
  }
}

S