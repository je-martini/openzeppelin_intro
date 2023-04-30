// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract token is ERC721("token fungible", "TF") {

    constructor() {
        _mint(msg.sender, 1);
    }
}