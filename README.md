# OmniSocial Blockchain

OmniSocial is a sovereign Layer 1 blockchain purpose-built for decentralized social networks, identity, and reputation.

## ✨ Features

- Modular smart contracts for identity, posts, rep, quests, governance
- Gasless UX and native `.omni` domains via BridgeID
- zkProofs, personas, and social tipping
- Fully composable SDK and frontend

## 📦 Monorepo Structure

```
contracts/       # Solidity smart contracts
frontend/        # Next.js social dApp
subgraph/        # The Graph subgraph config
sdk/             # TypeScript SDK
docs/            # Whitepaper, specs, API docs
infra/           # Devnet and deploy tooling
scripts/         # CLI and setup scripts
```

## 🚀 Quick Start

```bash
yarn install
npx hardhat compile
npx hardhat test
cd frontend && yarn dev
```

## 🧪 Testnet Deployment

See `infra/devnet/README.md` for RPC setup, faucet, and funded accounts.

## 🤝 Contributing

Pull requests welcome! See `CONTRIBUTING.md` for style guide and test coverage goals.
