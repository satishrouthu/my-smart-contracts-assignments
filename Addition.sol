//SPDX - License - Identifier:MIT
pragma solidity ^0.8.0;
contract addition{
    function addnumber(uint _a,uint _b) public pure returns(uint){
        uint sum=_a+_b;
        return sum;
    }     
}