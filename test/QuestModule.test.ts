import { expect } from "chai";
import { ethers } from "hardhat";

describe("QuestModule", function () {
  it("should deploy", async function () {
    const Module = await ethers.getContractFactory("QuestModule");
    const module = await Module.deploy();
    await module.deployed();
    expect(module.address).to.properAddress;
  });
});
