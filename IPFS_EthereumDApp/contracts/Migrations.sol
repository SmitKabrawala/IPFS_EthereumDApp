pragma solidity ^0.5.0; //The version can be found by typing "truffle version", we need to put caret to match all the supporting versions of the solidity

contract Migrations { //Truffle requires you to have a Migrations contract in order to use the Migrations feature. This contract must contain a specific interface, but you're free to edit this contract at will.  
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  constructor() public {
    owner = msg.sender;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) public restricted {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}
