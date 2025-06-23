const hre = require("hardhat");

async function main() {
  const AgentRegistry = await hre.ethers.getContractFactory("AgentRegistry");
  const registry = await AgentRegistry.deploy();
  await registry.deployed();
  console.log(`AgentRegistry deployed at: ${registry.address}`);

  const CopyTradeSimulator = await hre.ethers.getContractFactory("CopyTradeSimulator");
  const copy = await CopyTradeSimulator.deploy();
  await copy.deployed();
  console.log(`CopyTradeSimulator deployed at: ${copy.address}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
