// SPDX-License-Identifier: MIT
pragma  solidity ^0.8.0;
contract   Struct{
    enum status{
            CONFIRMED,
            PACKING,
            EN_ROUTE,
            DELIVERED,
            DELAYED
}

    
     struct package{
       string from;
       string to;
       status packageStatus;
     }
     mapping (uint => package)  public packageOrder;
     function addPackage(uint _orderID,string memory _from, string memory _to) public {
       package memory newPackage;
       newPackage.from= _from;
       newPackage.to= _to;
       newPackage.packageStatus= status.CONFIRMED;
       packageOrder[_orderID] = newPackage;
     }
 function changeStatus(uint _orderID, status _status) public {
   packageOrder[_orderID].packageStatus=_status;
 }

}