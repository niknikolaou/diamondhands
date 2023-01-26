# DiamondHands Score Smart Contract

A simple smart contract to store player scores and nicknames on the Ethereum blockchain.

## Features
- Players can add their own nicknames
- Players can add their own encrypted scores
- Players can retrieve their own encrypted scores
- Players can retrieve other players' nicknames

## Contract Methods
- addNickname(string _nickname): Allows a player to add a nickname for themselves. The nickname must be between 3 and 30 characters in length.
- addScore(string _encryptedScore): Allows a player to add an encrypted score for themselves.
- getAllScores(): Returns an array of all scores that have been added to the contract.
- getNickname(address _player): Returns the nickname of a given player.
- getScore(address _player): Returns the encrypted score of a given player.

## Events
- NicknameAdded(address player, string nickname): Triggered when a player adds a nickname for themselves.
- ScoreAdded(address player, string encryptedScore, string nickname): Triggered when a player adds an encrypted score for themselves.

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
