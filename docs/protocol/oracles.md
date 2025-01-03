---
sidebar_position: 3
---

# Oracles

## What is an Oracle?

**Oracles** are a crucial component of the **BakerFi** protocol, their primary responsibility is to provide up-to-date token prices and data to our smart-contracts and our decision making agents. Our protocol rely on this precise information for proper and healthy strategy operation and function.

Our system consume aggregated prices and external data powered **Pyth Network.**

The oracle is responsible for updating, storing, and distributing up-to-date token prices, market data and other relevant information to the decision making process and proper operation of the protocol.

## Why are the Accurate Data is important ?

Data is fuel for any protocol to work properly under a dynamic environment like the DeFi.

1. **Risk Management**: Accurate prices ensures that the collateralization ratios are maintained correctly. If the value of the collateral drops significantly, it can trigger liquidations. Accurate datae for example helps in assessing the true value of collateral relative to borrowed assets, enabling better risk management.
2. **Liquidation Protection**: Undercollateralization occurs when the value of the collateral falls below a certain threshold relative to the borrowed amount triggering for instance an AAVE liquidiation . Accurate pricing helps in identifying such situations early, allowing the protocol itself to take necessary actions to rebalance the position before it leads to liquidation.
3. **User Confidence**: Providing accurate pricing enhances user confidence in the protocol and fosters trust in our  operations.

Overall, accurate data is fundamental for maintaining the integrity, stability, and efficiency of BakerFI. It plays a critical role in risk management, preventing undercollateralization, maintaining market stability, fostering decision making confidence, and ensuring compliance with regulatory requirements.


:::info
💡 **Oracles Responsibilities on BakerFi**
- Updates, stores, and distributes up-to-date token prices relevant to the system  like the:
- Strategy Assets Pricing
- Vault/Strategy Position Values
- Vault Shares Values
- Provides functionality to perform exchange
- Determine lending market accurate borrowing/supply rates
- Excecute Risk Analysis
- Provide historical data for the agent decision making process
- Vault Rebalance Costs
- Identify Trends, Volatility on Markets, Chains
- Execute Vault Protection procedures accurately
:::

## Why Pyth Network?

**Pyth Network** feeds publish financial market data to multiple blockchains where the BakerFi wants to operate. Pyth's market data is contributed by over **90 publishers**, including some of the biggest exchanges and market making firms in the world. Each price feed publishes an aggregate of publisher data that updates multiple times per second making the data more accurate specially for DeFi dapps that rely heavily on update data operate continuously with relevant and updated information.

Pyth Protocol uses an push model that allows any protocol that requires an updated data to initiate a data update based on the accurate **Pyth Hermes Network**.

Pyth updates requested my any dapp or agent, created on Pyth Network,  are signed such that the Pyth on-chain smart contract can verify their authenticity making sure the price update is coming from trustfull publishers that operate on Pyth Network.


## Useful Links

[Know more about Pyth Network](https://pyth.network/)