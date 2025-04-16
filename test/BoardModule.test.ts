import { expect } from "chai";
import { ethers } from "hardhat";

describe("BoardModule", function () {
  it("should deploy", async function () {
    const Module = await ethers.getContractFactory("BoardModule");
    const module = await Module.deploy();
    await module.deployed();
    expect(module.address).to.properAddress;
  });
});
