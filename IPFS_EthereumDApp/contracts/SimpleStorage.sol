pragma solidity ^0.5.0; //The version can be found by typing "truffle version", we need to put caret to match all the supporting versions of the solidity

contract SimpleStorage { //generic smart contract by default
  uint ipfsHash;

  function set(uint x) public {
    ipfsHash = x; //used to set the ipfsHash in an unsigned datatype x
  }

  function get() public view returns (uint) {
    return ipfsHash; //used to retrive the ipfsHash in the form of an unsigned datatype
  }
}
