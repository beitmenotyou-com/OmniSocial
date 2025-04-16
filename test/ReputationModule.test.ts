import { expect } from "chai";
import { ethers } from "hardhat";

describe("ReputationModule", function () {
  it("should deploy", async function () {
    const Module = await ethers.getContractFactory("ReputationModule");
    const module = await Module.deploy();
    await module.deployed();
    expect(module.address).to.properAddress;
  });
});
