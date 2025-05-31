# WingVault OG Token + Vault Contracts

This repo contains the token and vault smart contracts for Wing Shack Co's decentralized vault system.

## 🔐 Contracts

### `WINGOG_Token.sol`
- ERC-20 token representing early backer stake in Wing Shack Co.
- Minted once on deployment with fixed supply.

### `WingVault.sol`
- Users can stake WING-OG into a vault contract.
- Tracks balances, staking time, and allows withdrawal.
- Designed for integration with a rewards backend system.

## 🧠 Audit Scope

Please audit:
- WINGOG_Token.sol — verify minting, total supply, and symbol logic
- WingVault.sol — verify staking logic, withdrawal protection, and vault tracking

This system converts past real-world investor debt into a verifiable on-chain stake with tokenized participation and reward logic.

## 🔗 Related

- [wingverse.co](https://wingshackco.com) — brand ecosystem
- [Token Explainer PDF](link-if-you-upload-later)

Language: Solidity
