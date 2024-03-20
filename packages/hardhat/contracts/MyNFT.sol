// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract MyNFT is Ownable, ERC721Enumerable {
    uint256 public tokenCounter;
    address public newAddress;

    constructor(string memory name_, string memory symbol_, address _newAddress) ERC721(name_, symbol_) {
        tokenCounter = 0;
        newAddress = _newAddress;
    }

    // Function to mint a new token
    function mintToken(address recipient) public onlyOwner {
        _safeMint(recipient, tokenCounter);
        tokenCounter++;
    }
}