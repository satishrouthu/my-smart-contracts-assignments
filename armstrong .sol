//progrm to check wheter a number is armstrong
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract armstrong{
  function _armstrong(uint _num) public pure returns(uint){
          uint cube=0;
          uint _n;
          while(_num>0){
             _n=_num%10;
             cube=cube+(_n**3);
             _num=_num/10;
          }
          return cube;

  }
}