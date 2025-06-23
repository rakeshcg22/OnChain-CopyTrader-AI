# OnChain CopyTrader AI

**OnChain CopyTrader AI** is a decentralized platform built for the Supra Hackathon that allows users to create and register AI-powered trading agents, simulate their performance, and allow others to copy these agents on-chain.

## Features

- 📈 AI trading strategy simulation (SMA, MACD, RSI via Python)
- 🧠 Agent registry and performance tracking on Supra Blockchain
- 🔄 Copy trading simulation using Supra smart contracts
- 🖥️ React-based frontend for interaction
- 🔧 Deployed via Hardhat (EVM-compatible)

## Smart Contracts

- `AgentRegistry.sol`: Registers AI agents with performance data
- `CopyTradeSimulator.sol`: Simulates copy trading for selected agents

## Getting Started

See `USER_MANUAL.md` or follow these steps:

```bash
npm install
npx hardhat run scripts/deploy.js --network supra
```

## Python Simulation

```bash
pip install yfinance pandas
python ai_agent.py
```

---
Built with ❤️ for the NYC Permissionless Hackathon using the Supra Stack.
