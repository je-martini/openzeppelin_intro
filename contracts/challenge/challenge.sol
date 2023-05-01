// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/introspection/ERC165Checker.sol";


contract challenge {

    using  ERC165Checker for address;

    function is_ERC20(address direccion) public view returns (bool) {
        bytes4 id = type(IERC20).interfaceId;
        return direccion.supportsInterface(id);
    }

    function is_ERC721(address direccion) public view returns (bool) {
        bytes4 id = type(IERC721).interfaceId;
        return direccion.supportsInterface(id);
    }
}