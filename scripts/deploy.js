const hre = require("hardhat");

async function main() {
  const BridgeID = await hre.ethers.getContractFactory("BridgeID");
  const bridgeId = await BridgeID.deploy();
  await bridgeId.deployed();
  console.log("BridgeID deployed to:", bridgeId.address);
}
main();