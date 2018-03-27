pragma solidity ^0.4.21;

contract GameVoting {
  byte32[] public gameList;
  mapping (byte32 => uint8) public votesReceived;

  function GameVoting(byte32[] names) public {
    gameList = names;
  }

  function totalVotesFor(byte32 game) view public returns (uint8) {
    require(validGame(game));
    return votesReceived[game];
  }

  function voteForGame(byte32 game) public {
    require(validGame(game));
    votesReceived[game] += 1;
  }

  function validGame(byte32 game) view public returns (bool) {
    for (uint i = 0; i < gameList.length; i++) {
      if (gameList[i] == game) {
        return true;
      }
    }
    return false;
  }
}

