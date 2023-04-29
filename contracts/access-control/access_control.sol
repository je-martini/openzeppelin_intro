// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/access/AccessControl.sol";


contract acces_role is AccessControl{

        bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
        bytes32 public constant USER_ROLE = keccak256("USER_ROLE");


        constructor(){
            _grantRole(ADMIN_ROLE, msg.sender);
        }

        function just_admin() public view  {
            require(hasRole(ADMIN_ROLE, msg.sender), "Just the Admin can use this function");

        }

        function just_user() public view {
            require(hasRole(USER_ROLE, msg.sender), "Just the USERS can use this function");
        }

        function add_role(bytes32 role, address account) public {
            require(hasRole(ADMIN_ROLE, msg.sender), "Just the Admin can use this function");

            _grantRole(role, account);
        }
}