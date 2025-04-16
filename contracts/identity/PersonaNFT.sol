// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PersonaNFT is ERC721URIStorage, Ownable {
    uint256 public nextId = 1;

    mapping(uint256 => string) public personaLabel;

    constructor() ERC721("OmniPersona", "OPERS") {}

    function mint(address to, string memory label, string memory uri) public onlyOwner returns (uint256) {
        uint256 tokenId = nextId++;
        _mint(to, tokenId);
        _setTokenURI(tokenId, uri);
        personaLabel[tokenId] = label;
        return tokenId;
    }

    function getLabel(uint256 tokenId) public view returns (string memory) {
        return personaLabel[tokenId];
    }
}
