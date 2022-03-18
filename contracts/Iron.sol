//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract IRON is ERC20{

    constructor() ERC20("IRON", "FE"){
        _mint(msg.sender, 1_000_000e18);
    }

    function buyToken(address receiver) public payable returns(bool){
        require(msg.value > 0, "InSufficientAmount");
        uint amount = msg.value * 1000e18;
        _mint(receiver, amount);
        return true;
    }
}