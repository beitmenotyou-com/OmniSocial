import { ethers } from "ethers";

export class OmniClient {
  provider: ethers.JsonRpcProvider;
  constructor(rpcUrl: string) {
    this.provider = new ethers.JsonRpcProvider(rpcUrl);
  }

  async getBlockNumber() {
    return this.provider.getBlockNumber();
  }

  // Add methods for post, follow, tip, etc.
}
