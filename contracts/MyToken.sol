// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address owner;

    constructor() ERC20("Rezer", "RZR") {
        //Initial supply of 1000 tokens minted to the owner.
        owner = msg.sender;
        _mint(owner, 1000);
    }

    function mint(address account, uint256 value) external {
        require(msg.sender == owner, "Caller must be the owner of the contract");

        _mint(account, value);
    }

    function burn(uint256 value) external {
        _burn(msg.sender, value);
    }

    function transferTokens(address to, uint256 value) external {
        //Check if there is enough balance
        require(balanceOf(msg.sender) >= value, "Not Enough Tokens");

        _transfer(msg.sender, to, value);
    }
}
