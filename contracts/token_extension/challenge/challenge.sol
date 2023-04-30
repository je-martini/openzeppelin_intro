// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract challenge is ERC20Burnable, Pausable, Ownable{
    
    constructor() ERC20Burnable() ERC20("challenge extension", "DE"){
        _mint(msg.sender, 100);
    }

    function pause1() public  onlyOwner {
        _pause();
    }

    function un_pause() public  onlyOwner {
        _unpause();
    }

    function burn1 (uint amount) public  {
        require(paused() != true, "The contract is pause");
        burn(amount);
    }

}