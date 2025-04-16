import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const config: HardhatUserConfig = {
  solidity: "0.8.19",
  networks: {
    localhost: {
      url: "http://127.0.0.1:8545"
    },
    devnet: {
      url: "http://127.0.0.1:8545",
      accounts: ["0x..."]  // Fill in with local key
    }
  }
};

export default config;
