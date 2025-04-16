# OmniSocial ProtocolKit

Welcome to the OmniSocial ProtocolKit — a modular Web3 social infrastructure designed to support interoperable, reputation-based, decentralized networking on a Layer 1 blockchain.

## 📁 Structure

- `contracts/` — All Solidity smart contracts, grouped by domain.
- `frontend/` — Web dApp built with Next.js or Vite.
- `sdk/` — JavaScript/TypeScript SDK for developers.
- `test/` — Hardhat/Foundry-based contract tests.
- `scripts/` — Contract deployment and migration scripts.
- `docs/` — Specs, developer guides, and integration notes.

## 🧠 Modules

### Identity Layer
- `BridgeIDModule.sol`: DID + domain identity
- `PersonaNFT.sol`: Pseudonymous persona NFTs
- `SubdomainManager.sol`: `.omni` subdomain handling
- `ZKVerifier.sol`: zkProof-linked identity credentials

### Social Layer
- `PostModule.sol`: Post creation and feed updates
- `FollowModule.sol`: Trust graph follow logic
- `TipModule.sol`: Native tipping engine

More modules coming soon...

## 🛠️ Get Started

```bash
yarn install
npx hardhat test
npx hardhat run scripts/deploy_BridgeIDModule.js
```

## 📜 License

MIT — composable and open source. Build freely.

> OmniSocial: Where reputation is your passport, identity is sovereign, and freedom is programmable.
