import { ethers } from "ethers";
import PostAbi from "../contracts/social/PostModule.json";
import FollowAbi from "../contracts/social/FollowModule.json";

export class OmniClient {
  provider: ethers.JsonRpcProvider;
  signer: ethers.Signer;

  constructor(rpcUrl: string, signer?: ethers.Signer) {
    this.provider = new ethers.JsonRpcProvider(rpcUrl);
    if (signer) this.signer = signer;
  }

  loadContract(address: string, abi: any) {
    return new ethers.Contract(address, abi, this.signer || this.provider);
  }

  async createPost(postModuleAddr: string, content: string) {
    const contract = this.loadContract(postModuleAddr, PostAbi);
    return await contract.createPost(content);
  }

  async followUser(followModuleAddr: string, target: string) {
    const contract = this.loadContract(followModuleAddr, FollowAbi);
    return await contract.follow(target);
  }
}
