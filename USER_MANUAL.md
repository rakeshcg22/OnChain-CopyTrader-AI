# User Manual – OnChain CopyTrader AI

## Prerequisites

- Node.js (v16+)
- Hardhat
- Python 3.x
- Supra EVM-compatible testnet URL and funded PRIVATE_KEY

## Deploying Smart Contracts

1. Install Hardhat dependencies:
    ```bash
    npm install --save-dev hardhat @nomicfoundation/hardhat-toolbox
    ```

2. Create `.env` file:
    ```env
    PRIVATE_KEY=your_private_key
    ```

3. Deploy:
    ```bash
    npx hardhat run scripts/deploy.js --network supra
    ```

## Simulate AI Strategy

```bash
pip install yfinance pandas
python ai_agent.py
```

## React UI

Plug deployed contract addresses into the frontend React app and run:

```bash
npm install
npm start
```
