// SPDX-License-Identifier:MIT
pragma solidity ^0.8.1;

interface IERC721{
    function transferForm(
        address _from,
        address _to,
        uint256 _id
    ) external;
}

contract Escrow{
    address public nftAddress;
    address payable public seller;
    address public inspector;
    address public lender;

    constructor(address _nftAddress, address payable _seller, address _inspector, address _lender){
        nftAddress = _nftAddress;
        seller = _seller;
        inspector = _inspector;
        lender = _lender;
    }
}