# DiamondHands Score Smart Contract

A simple smart contract to store player scores and nicknames on the Ethereum blockchain.

## Features
- Players can add nicknames to their Ethereum address
- Players can add encrypted scores to their Ethereum address
- Players can view all scores and nicknames on the contract
- Events are emitted for added nicknames and scores

## Usage
1. Add a nickname to your Ethereum address by calling the `addNickname` function and passing in a string for your desired nickname. 
2. Add an encrypted score to your Ethereum address by calling the `addScore` function and passing in a string for your encrypted score. 
3. View all scores and nicknames on the contract by calling the `getAllScores` and `getNickname` functions respectively.

## Note

- The smart contract is written in Solidity version 0.8.9 and therefore compatible with any environment that support solidity version 0.8.9 or above.

## Contribution
- Contributions are welcome! Please feel free to submit pull requests with any improvements or bug fixes.
- Please open an issue if you encounter any problems or have any suggestions for the project.

## Building the project

Run:

```bash
npm run build
# or
yarn build

When you're ready to deploy your contracts, just run one of the following command to deploy you're contracts:

```bash
npm run deploy
# or
yarn deploy
```

## Releasing Contracts

If you want to release a version of your contracts publicly, you can use one of the followings command:

```bash
npm run release
# or
yarn release
