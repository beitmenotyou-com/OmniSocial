import { expect } from "chai";
import { ethers } from "hardhat";

describe("TrustBoostModule", function () {
  it("should deploy", async function () {
    const Module = await ethers.getContractFactory("TrustBoostModule");
    const module = await Module.deploy();
    await module.deployed();
    expect(module.address).to.properAddress;
  });
});
