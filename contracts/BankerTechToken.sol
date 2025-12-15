// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title BankerTechToken (BTT)
 * @dev Implementation of the BankerTechToken
 * @author Prashant Bhatt
 * @notice Created to demonstrate financial asset tokenization on Ethereum.
 */
contract BankerTechToken is ERC20, Ownable {
    
    constructor() ERC20("BankerTechToken", "BTT") Ownable(msg.sender) {
        // Mint initial supply: 1,000,000 tokens (adjusted for 18 decimals)
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    /**
     * @dev Function to mint new tokens.
     * @param to The address that will receive the minted tokens.
     * @param amount The amount of tokens to mint.
     * Only the owner (Central Banker) can call this function.
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
