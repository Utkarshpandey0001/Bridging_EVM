// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { Ownable } from "@opennzeppelin/contracts/access/Ownable.sol";

contract RPandeycoin is ERC20, Ownable {
    constructor() ERC20("RPandeycoin", "RPY") Ownable(msg.sender) {
      
   }

   function mint(address _to,uint _amount) public onlyOwner {
        _mint(_to,_amount);    
   }
    function burn(address _from,uint _amount) public onlyOwner {
        _burn(_to, amount);
    }
}

