# DeFi Yield Vault (ERC-4626)

This repository provides a high-quality, "Tokenized Vault Standard" implementation. It follows the EIP-4626 standard to ensure maximum interoperability with other DeFi protocols like Yearn, Aave, and Curve.

### Technical Architecture
* **ERC-4626 Standard:** Uses the modern standard for yield-bearing tokens.
* **Share Accounting:** Mathematically sound logic for calculating deposits and withdrawals relative to the underlying asset.
* **Gas Optimized:** Streamlined functions to reduce transaction costs for end-users.
* **Security:** Inherits OpenZeppelin’s battle-tested security modules.

### Integration
1. Configure the `asset` address (e.g., USDC or DAI).
2. Deploy the contract to a selected EVM chain.
3. Users deposit assets and receive "Vault Shares" representing their portion of the pool.

### Development
* Compile: `npx hardhat compile`
* Test: `npx hardhat test`
