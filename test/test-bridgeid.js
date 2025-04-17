const { expect } = require("chai");

describe("BridgeID", function () {
  it("Should deploy", async function () {
    const BridgeID = await ethers.getContractFactory("BridgeID");
    const bridge = await BridgeID.deploy();
    await bridge.deployed();
    expect(await bridge.address).to.be.properAddress;
  });
});
