import { expect } from "chai";
import { ethers } from "hardhat";

describe("PostModule", function () {
  it("should deploy", async function () {
    const Module = await ethers.getContractFactory("PostModule");
    const module = await Module.deploy();
    await module.deployed();
    expect(module.address).to.properAddress;
  });
});
