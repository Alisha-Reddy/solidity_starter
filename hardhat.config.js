/** @type import('hardhat/config').HardhatUserConfig */
require("@nomiclabs/hardhat-ethers"); // Ensure the ethers plugin is required
module.exports = {
  solidity: "0.8.1",
    paths: {
    sources: "./contracts",
    tests: "./test",
    cache: "./cache",
    artifacts: "./artifacts"
  }
};
