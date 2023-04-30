// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract token_challenge is AccessControl, ERC20("token fungible", "TF"), ERC20Burnable, Pausable{


    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

    constructor(){
        _grantRole(ADMIN_ROLE, msg.sender);
        _mint(msg.sender, 1000);
    }

    modifier just_admin(){
        require(hasRole(ADMIN_ROLE, msg.sender), "Just the Admin can use this function");
        _;
    }

    function burn1(uint amount) public  just_admin {
        burn(amount);
    } 

    function mint1(uint amount) public just_admin {
        if(amount > 1000) {
            _pause();
        }
        
        _mint(msg.sender, amount);
        
    }




}