//program to  find factorial number
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract factorialnum{
function factorial(uint _num) public pure returns(uint){
    uint fact=1;
    for (uint i=1;i<_num+1;i++){
      fact*=i;
    }
    return fact;
}
}
