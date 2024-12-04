require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.26",
  settings: {
    viaIR: true,
    optimizer: {
      enabled: true,
      runs: 500,
    },
  }
};
