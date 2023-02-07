# DiamondHands Score Smart Contract

This is the DiamondScores contract which is used to store game scores and nicknames for players in the Diamond Hands game. This contract allows players to add their encrypted scores and nicknames to the contract and retrieve scores of other players. The contract is owned by an administrator and also has an interface to interact with the ERC1155 token contract.

## Features
- Players can add their own unique nicknames
- Players can add their own encrypted scores
- Retrieval of all players' encrypted scores and nicknames
- Mapping of players' addresses to their nicknames and vice versa
- Check if a player owns an NFT with a specific ID
- Ownership management of the contract by an owner
- Event emission for score addition, nickname addition, and NFT contract address set.

## Contract Methods
- addNickname(string _nickname): Allows a player to add a unique nickname for themselves. The nickname must be between 3 and 25 characters in length.
- addScore(string _encryptedScore): Allows a player to add an encrypted score for themselves.
- getAllScores(): Returns an array of all encrypted scores that have been added to the contract.
- getAllUsernames(): Returns an array of all the nicknames of players who have added scores to the contract.
- getAllUsers(): Returns an array of all the addresses of players who have added scores to the contract.
- getNicknameByAddress(address _player): Returns the nickname of a given player.
- getAddressByNickname(string nickname): Returns the address of a player by searching for the nickname.
- getScore(address _player): Returns the encrypted score of a given player.
- hasNFT(uint256 _tokenId, address user): Checks if a player owns an NFT with a specific ID.
- setnftContractAddress(address address2dWolf): Allows the contract owner to set the address of the NFT contract. (This is an administrative function and can only be called by the owner of the contract).




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
