# OmniSocial SDK

This is the official TypeScript SDK for interacting with the OmniSocial blockchain.

## Features

- Gasless posting, following, tipping
- Identity and persona management
- Reputation reading and submission
- Ethers.js wrapper for all modules

## Example Usage

```ts
import { OmniClient } from "omnisocial-sdk";

const client = new OmniClient("http://localhost:8545");
await client.createPost("0xPostModuleAddress", "Hello World!");
```
