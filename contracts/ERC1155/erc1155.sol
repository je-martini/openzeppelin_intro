// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";



contract multitoken is ERC1155 {

    uint256 public constant fungible = 0;
    uint256 public constant no_fungible = 1;
    uint256 public constant next_fungible = 2;


    constructor() ERC1155("aca va la URI") {
        _mint(msg.sender, fungible, 1000, "");
        _mint(msg.sender, no_fungible, 1, "");
        _mint(msg.sender, next_fungible, 2000, "");

    }
}