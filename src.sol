// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFT2 is ERC721 {
    struct Contribution {
        address contributor;
        uint percentage;
    }

    mapping(uint => Contribution[]) public contributions;
    
    constructor() ERC721("NFT2", "NFT") {}
    
    function mintNFT(address recipient, uint tokenId) public {
        _mint(recipient, tokenId);
    }

    function addContribution(uint tokenId, address contributor, uint percentage) public {
        contributions[tokenId].push(Contribution(contributor, percentage));
    }

    function getContributions(uint tokenId) public view returns (Contribution[] memory) {
        return contributions[tokenId];
    }
}

