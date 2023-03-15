//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract HarshCoin is ERC20,Ownable {
    
    constructor() ERC20("HarshCoin","HRM"){
        _mint(msg.sender,1000 * 10 ** 18); 
    }

    function issueToken() public onlyOwner{
        _mint(msg.sender,100*10**18);
    }
}