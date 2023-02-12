// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DeleteLengthOfElement{
  uint[]  arr=[1,2,3,4,5,6,7,8,8,9,7,6,5,3];
  function AddElement(uint _num) public {
    arr.push(_num);
  }
  function storedata() public view returns(uint[] memory){
      return arr;
  }
      function popElement() public {
        arr.pop();
      }
      function removeElement(uint _index) public {
        delete arr[_index];
      }
      function elementlength() public view returns(uint) {
                return arr.length;
      }
      function DeleteElementoflength(uint _index) public returns(uint[] memory){
            for (uint i=_index;i<arr.length-1;i++){
              arr[i]=arr[i+1];
            }
            delete arr[arr.length-1];
            arr.pop();
            return arr;
      }
      
}
