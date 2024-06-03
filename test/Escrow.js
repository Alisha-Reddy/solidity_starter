const { expect } = require("chai");
const hardhat = require("hardhat");
const { ethers } = hardhat;

// const { expect } = require('chai');
// const { ethers } = require('hardhat');

const tokens = (n) => {
  return ethers.utils.parseUnits(n.toString(), 'ether');
};

describe("Escrow", () => {
  it("saves the addresses", async () => {
    const RealEstate = await ethers.getContractFactory('RealEstate');
    const realEstate = await RealEstate.deploy();

    console.log("RealEstate Contract Address:", realEstate.address);
  });
});