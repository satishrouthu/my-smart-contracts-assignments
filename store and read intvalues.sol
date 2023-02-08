//SPDX - License - Identifier:MIT
pragma solidity ^0.8.0;

contract add{
  uint sum;

     function set(uint _sum) public{
         sum=_sum;
}
     function addnumber() public view returns(uint){
        uint value= sum + 5;
        return value;
}
}