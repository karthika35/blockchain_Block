pragma solidity >=0.4.21 <0.7.0;
contract Todo {
    uint public counttodo=0;

    struct todo {
        uint256 id;
        string name;
        bool done;
    }
    event todoEvent (
        uint id,
        string name,
        bool done
    );

    mapping(uint => todo) public todoList;



    function addTodo( string memory name) public payable{
        counttodo ++;
        todoList[counttodo]= todo(counttodo, name, false);
    }

    function getById(uint id) public{
        emit todoEvent(todoList[id].id,todoList[id].name,todoList[id].done);
    }
}
