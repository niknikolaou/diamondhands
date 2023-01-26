// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract DiamondScores 
{
    address erc1155Address;
    IERC1155 erc1155;
    mapping(address => string) public nicknames;
    mapping(string => address) public nicknameToAddress;

    struct Score 
    {
        address player;
        string encryptedScore;
    }
    
    Score[] public scores;

    event ScoreAdded(address player, string encryptedScore, string nickname);
    event NicknameAdded(address player, string nickname);

    function DiamondScores() public {
        erc1155Address = 0x...;
        erc1155 = IERC1155(erc1155Address);
    }

    function addNickname(string memory _nickname) public 
    {
        require(bytes(_nickname).length > 0);
        require(nicknameToAddress[_nickname] == address(0));
        require(bytes(_nickname).length >= 3 && bytes(_nickname).length <= 30); // check if the nickname is between 3-22 characters
        nicknames[msg.sender] = _nickname;
        nicknameToAddress[_nickname] = msg.sender;
        emit NicknameAdded(msg.sender, _nickname);
    }

    function addScore(string memory _encryptedScore,uint256 tokenId) public
    {
        // check if user has the required NFT in their wallet
        require(erc1155.balanceOf(msg.sender, tokenId) > 0, "You do not have the required NFT in your wallet");

        scores.push(Score({player: msg.sender,encryptedScore: _encryptedScore}));
        emit ScoreAdded(msg.sender, _encryptedScore, nicknames[msg.sender]);
    }

    function getAllScores() public view returns (Score[] memory) {
    return scores;
    }

    function getNickname(address _player) public view returns (string memory) 
    {
    return nicknames[_player];
    }

    function getScore(address _player) public view returns (string memory) 
    {
        for (uint i = 0; i < scores.length; i++) 
        {
            if (scores[i].player == _player) 
            {
                return scores[i].encryptedScore;
            }
        }
        return "";
    }
}