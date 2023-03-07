
// File: owner.sol

//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract owner{
   address public immutable OWNER_ADDRESS;
   constructor () {
      OWNER_ADDRESS= payable(msg.sender);
   }
   modifier isowner(){
      require(OWNER_ADDRESS==msg.sender);
      _;
   }
}
// File: hotel.sol

//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract web3hotel is owner{
    enum  roomstatus{
        occupied,
        vaccant
    }
   struct rooms{
       uint beds;
       bool Aircondition;
       uint price;
   }
uint[] roomlist;
mapping (uint => rooms) roomNumber;
mapping (uint => roomstatus) statusof_room;
mapping (uint => address) public roombooking;


    function addRooms(uint _roomNumber, uint _beds, bool _Aircondition, uint _price) public isowner{
    roomNumber[_roomNumber]=rooms(_beds,_Aircondition,_price);
    statusof_room[_roomNumber]=roomstatus.vaccant;
    roomlist.push(_roomNumber);

    }
    function getrooms() public view returns (uint[] memory){
        return roomlist;
    }
    function veiw_roomDetails(uint _roomNumber) public view returns(rooms memory){
        return roomNumber[_roomNumber];
    }
    function checkAvailability(uint _roomNumber) public view returns(roomstatus){
        return statusof_room[_roomNumber];
    }
    function bookRoom(uint _roomNumber) public payable iscorrectAmount isvaccant(_roomNumber){
       (bool truee,)=OWNER_ADDRESS.call{value:msg.value}("");
       require (truee, "not transaction");
        roombooking[_roomNumber]= (msg.sender);
        statusof_room[_roomNumber]=roomstatus.occupied;
    }
    function check_out(uint _roomNumber)public isroomowner(_roomNumber){
        delete roombooking[_roomNumber];
        statusof_room[_roomNumber]=roomstatus.vaccant;
    }
    function get_ownerbalance() public view returns(uint){
        return OWNER_ADDRESS.balance;
    }
    modifier isvaccant(uint _roomNumber){
        require(statusof_room[_roomNumber]==roomstatus.vaccant);
        _;
    }
    modifier isroomowner(uint _roomNumber){
        require (roombooking[_roomNumber]==msg.sender,"can not checkout,because your not a owner");
        _;
    }
    modifier iscorrectAmount(){
        require (msg.value==1 ether,"insuffiecent amount" );
        _;
    }
   
}