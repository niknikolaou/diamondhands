// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract DiamondScores 
{
    mapping(address => string) private addressToNicknames;
    mapping(string => address) private nicknameToAddress;
    mapping(address => string) private scores;
    address[] private usersAddress;


    event ScoreAdded(address player, string encryptedScore, string nickname);
    event NicknameAdded(address player, string nickname);

    function addNickname(string memory _nickname) public 
    {
        require(bytes(_nickname).length > 0,"Nickname is empty!");
        require(nicknameToAddress[_nickname] == address(0),"Nickname Already Exists!");
        require(bytes(_nickname).length >= 3 && bytes(_nickname).length <= 25,"Nickname is between 3-25 characters");
        require(bytes(addressToNicknames[msg.sender]).length <= 0,"You aready have a Nickname!");
        addressToNicknames[msg.sender] = _nickname;
        nicknameToAddress[_nickname] = msg.sender;
        emit NicknameAdded(msg.sender, _nickname);
    }

     function addScore(string memory _encryptedScore) public
    {
        if(bytes(scores[msg.sender]).length <= 0){
            usersAddress.push(msg.sender);
        }
        scores[msg.sender] = _encryptedScore;
        emit ScoreAdded(msg.sender, _encryptedScore, addressToNicknames[msg.sender]);
    }

     function getAllScores() public view returns (string[] memory) {
        string[] memory allScores = new string[](usersAddress.length);
        for (uint i = 0; i < usersAddress.length; i++) {
            allScores[i] = scores[usersAddress[i]];
        }
        return allScores;
    }

    function getAllUsers() public view returns (address[] memory) {
        return usersAddress;
    }

    function getNicknameByAddress(address _player) public view returns (string memory) {
        return addressToNicknames[_player];
    }

        function getAddressByNickname(string memory nickname) public view returns (address) {
    return nicknameToAddress[nickname];
}


    function getScore(address _player) public view returns (string memory) {
        return scores[_player];
    }
}