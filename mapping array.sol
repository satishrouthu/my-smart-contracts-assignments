//SPDX -License - Identifier:MIT 
pragma solidity ^0.8.0;
contract  map{  

  mapping(string => uint) public mathresult;

  function math (uint _a, uint _b) public {
     mathresult["sum"]= _a+ _b;
     mathresult["defference"]= _a - _b;
  }
  
    function deleteElement( string memory _key)  public{
            delete mathresult[ _key];
     }
    }