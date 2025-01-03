---
sidebar_position: 3
---

# Oracles

**Oracles** are a crucial component of the **BakerFi** protocol**,** their primary responsibility is to provide up-to-date token prices and data to our smart-contracts and our decision making agents. Our protocol rely on this precise information for proper and healthy strategy operation and function.

Our system consume aggregated prices and external data powered **Pyth Network.**

The oracle is responsible for updating, storing, and distributing up-to-date token prices, market data and other relevant information to the system.


## Why are the Accurate Data and Prices are important ?

1. **Risk Management**: Accurate prices ensures that the collateralization ratios are maintained correctly. If the value of the collateral drops significantly, it can trigger liquidations. Accurate datae for example helps in assessing the true value of collateral relative to borrowed assets, enabling better risk management.
2. **Liquidation Protection**: Undercollateralization occurs when the value of the collateral falls below a certain threshold relative to the borrowed amount triggering for instance an AAVE liquidiation . Accurate pricing helps in identifying such situations early, allowing the protocol itself to take necessary actions to rebalance the position before it leads to liquidation.
3. **User Confidence**: Providing accurate pricing enhances user confidence in the protocol and fosters trust in our  operations.