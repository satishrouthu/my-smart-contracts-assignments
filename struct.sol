// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.0;
contract  Struct{
      struct student{
           string name;
           uint rollNum;
           uint class;
           uint marks;
           string country;
      }
       mapping (uint => student) public list;
      function addStudentDetails(uint _ID,string memory _name, uint _rollNum, uint _class,uint _marks,string memory _country) public {
          student memory studentdetails;
           studentdetails.name=_name;
           studentdetails.rollNum=_rollNum;
           studentdetails.class=_class;
           studentdetails.marks=_marks;
           studentdetails.country=_country;
           list[_ID]=studentdetails;
      } 
 function retriveDetails(uint _id) public view returns(student memory){
     return list[_id];
 }

}