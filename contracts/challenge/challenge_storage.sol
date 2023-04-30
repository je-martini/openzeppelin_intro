// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


import "@openzeppelin/contracts/access/AccessControl.sol";


contract challenge_storage is AccessControl{


    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant WRITER_ROLE = keccak256("WRITER_ROLE"); 

    constructor(){
        _grantRole(ADMIN_ROLE, msg.sender);
    }

    modifier just_admin(){
        require(hasRole(ADMIN_ROLE, msg.sender), "Just the Admin can use this function");
        _;
    }

    modifier just_writer() {
        require(hasRole(WRITER_ROLE, msg.sender), "Just the USERS can use this function");
        _;
    }

    function add_role(address account) public just_admin(){
                
        _grantRole(WRITER_ROLE, account);
    }

    uint256 number;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public just_writer() {
        number = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }
}