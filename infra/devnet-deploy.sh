#!/bin/bash
echo "Deploying all core modules to devnet..."
npx hardhat run scripts/deploy_BridgeIDModule.js --network localhost
npx hardhat run scripts/deploy_PersonaNFT.js --network localhost
npx hardhat run scripts/deploy_PostModule.js --network localhost
npx hardhat run scripts/deploy_FollowModule.js --network localhost
npx hardhat run scripts/deploy_TipModule.js --network localhost
npx hardhat run scripts/deploy_ReputationModule.js --network localhost
npx hardhat run scripts/deploy_GrantLauncher.js --network localhost
echo "Deployment complete."
