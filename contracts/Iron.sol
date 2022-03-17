//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract IRON is ERC20{

    error InSufficientAmount();

    constructor() ERC20("IRON", "FE"){
        _mint(msg.sender, 1_000_000);
    }

    function buyToken(address receiver) public payable returns(bool){
        if(msg.value < 1 ether) revert InSufficientAmount();
        _mint(receiver, 1000);
        return true;
    }
}
