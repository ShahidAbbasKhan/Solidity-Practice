// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract StackClub {
    address[] members;
    constructor(){
        members.push(msg.sender);
    }
    function removeLastMember() external{
        require(isMember(msg.sender), "You are not Member");
        members.pop();
    }
    function addMember(address _adr) external {
     require(isMember(msg.sender), "You are not Member");
          members.push(_adr);
    }

    function isMember(address _adr) public view returns(bool val) {
      for(uint i=0;i<members.length; i++){
          if(members[i]== _adr){
              return true;
          }
     
        }
        return false;
    }
}