// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.9;
contract Mapping{
    struct Student{
        string name;
        uint rollNum;
        uint Class;
    }
    mapping(address=>Student) getStudentData;

    function getRegistered(string memory _name,uint _rollNum,uint _Class) public {
        getStudentData[msg.sender].name=_name;
        getStudentData[msg.sender].rollNum=_rollNum;
        getStudentData[msg.sender].Class=_Class;
    }
    function getStudentInfo(address _adr) public view returns(Student memory){
        return getStudentData[_adr];

    }

}