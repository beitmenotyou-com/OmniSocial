const hre = require("hardhat");

async function main() {
  const Module = await hre.ethers.getContractFactory("ReputationModule");
  const module = await Module.deploy();
  await module.deployed();
  console.log("ReputationModule deployed to:", module.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
