pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract GlassToPower is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function GlassToPower(address _owner)  UpgradeableToken(_owner) {
    name = "GlassToPower";
    symbol = "G2P";
    totalSupply = 20000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}