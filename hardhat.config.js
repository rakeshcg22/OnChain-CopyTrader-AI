require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

module.exports = {
  solidity: "0.8.19",
  networks: {
    supra: {
      url: "https://rpc.supra.com",
      accounts: [process.env.PRIVATE_KEY]
    }
  }
};
