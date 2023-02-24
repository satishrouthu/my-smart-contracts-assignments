// program to print factor of a number :
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract factorOfANmber{
  uint[] fact;
function factor(uint _num) public returns(uint[]memory){

  for (uint i=1;i<_num+1;i++){
    if (_num%i==0){
       fact.push(i);
    }
  }
    return fact;
}

}