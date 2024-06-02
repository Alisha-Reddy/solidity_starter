const { expect } = require('chai');
const { ethers } = require('hardhat');

const tokens = (n) => {
    return ethers.utils.parseUnit(n.toString(), 'ether')
}

describe('Escrow', () => {
    
    it ('saves the addresses', async () => {
        const RealEstate = await ethers.getContractFactory('RealEstate')
        realEstate = await RealEstate.deploy()

        console.log()
    })
})