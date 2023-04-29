// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";


    contract my_contract is Ownable{

        function free_access() public {

        }

        function just_owner() public onlyOwner{
            
        }
    }