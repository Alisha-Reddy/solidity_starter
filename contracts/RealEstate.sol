//SPDX-License-Identifier:MIT
pragma solidity ^0.8.1;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

// These lines import helpful code from a library called OpenZeppelin. This library provides pre-built tools to make creating NFTs easier. Here’s what we import:
// Counters: A tool to keep track of numbers.
// ERC721: A standard for creating NFTs.
// ERC721URIStorage: An extension of the ERC721 standard that allows us to store metadata (extra information) for our NFTs.


contract RealEstate is ERC721URIStorage{

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds; //This is gonna allow us crfeate an innumerable ERC721 token so we can create them from scratch

    constructor() ERC721("Real Estate", "REAL") {} 
    //It sets the name of our NFT collection to "Real Estate" and its symbol to "REAL".

    function mint(string memory tokenURI) public  returns (uint256) { 
        //It takes one input, tokenURI, which is a link to the metadata (like a description or picture) for the NFT.
        _tokenIds.increment(); //increases our counter by one because we are creating a new NFT.

        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId); //creates the new NFT and assigns it to the person who called the function (the sender).
        _setTokenURI(newItemId, tokenURI); //attaches the metadata link to our new NFT.

        return newItemId; 
    }

    function totalsupply() public view returns(uint256) {
        return _tokenIds.current();
    }

}


