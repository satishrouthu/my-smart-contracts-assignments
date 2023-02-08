//SPDX -License-Identifier: MIT
pragma solidity ^ 0.8.7;
contract  satish{
function mul(uint _num,uint _power) public pure returns(uint){
      uint sum=_num;

      for (uint i=1;i< _power;i++){

            sum*=_num;
      }
           return sum;
}
//flow statement:

function biggestofthree(uint _a,uint _b,uint _c) public pure returns(uint){

                  uint big;
                  big= _a> _b ? _a: _b;
                  big=big > _c ? big: _c;
                  return big;
}
}