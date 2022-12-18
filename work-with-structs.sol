// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.9;

contract valueToStruct{
    struct Employee {
        string name;
        Department dep;
        uint id;
    }
    struct Department {
        uint depId;
        string depName;
    }
    Department myDep=Department(333,"IT");
    function setValuesWithPara(string memory _name,uint _id) public view returns(Employee memory){
        Employee memory emp;
        emp.name=_name;
        emp.dep=myDep;
        emp.id=_id;
        return emp;
    }
    function setValues() public view returns(Employee memory){
        Employee memory emp;
        emp=Employee({name:"shahid",dep:myDep,id:234});
        return emp;

    }
}