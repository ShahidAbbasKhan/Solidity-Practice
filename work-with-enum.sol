// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.9;
contract Enums{
    enum Status{isPurchased,amountPaid,sentForDelivery,isReceived}
    Status status;
    function  purchased() public returns(Status){
        status=Status.isPurchased;
        return status;
    }
    function  paidAmount() public returns(Status){
        status=Status.amountPaid;
        return status;
    }
    function  sentForDelivery() public returns(Status){
        status=Status.sentForDelivery;
        return status;
    }
    function  isReceived() public returns(Status){
        status=Status.isReceived;
        return status;
    }
    function payNow() payable public {
        require(msg.value>0.005 ether,"pay amount 0.005 ether");
        require(status==Status.isPurchased,"Please Purchase Item ");
    }


}