// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    constructor() ERC20("Degen", "DGN") {}

    // Mint new tokens and distribute them to players as rewards
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Redeem tokens for items in the in-game store
    function redeem(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
        // Perform additional logic for item redemption in the in-game store
    }

    // Burn tokens that are no longer needed
    function burn(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }
    
    // Transfers tokens from sender to recipient
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(recipient != address(0), "Transfer to the zero address");
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _transfer(msg.sender, recipient, amount);
        return true;
    }
    
    // Checks the token balance of an address
    function checkBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }
}
