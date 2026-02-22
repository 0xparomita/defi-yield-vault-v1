// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title YieldVault
 * @dev Implementation of a professional yield-bearing vault using the ERC-4626 standard.
 */
contract YieldVault is ERC4626 {
    
    /**
     * @param asset The underlying token (e.g., USDC) to be managed by the vault.
     * @param name The name of the vault share token.
     * @param symbol The symbol of the vault share token.
     */
    constructor(
        IERC20 asset,
        string memory name,
        string memory symbol
    ) ERC20(name, symbol) ERC4626(asset) {}

    /**
     * @dev Hook that is called after a deposit is made. 
     * This is where a developer would integrate logic to move funds to Aave/Compound.
     */
    function _afterDeposit(uint256 assets, uint256 shares) internal override {
        // Logic to invest assets into a yield-generating protocol goes here
    }

    /**
     * @dev Returns the total amount of assets under management.
     */
    function totalAssets() public view override returns (uint256) {
        return IERC20(asset()).balanceOf(address(this));
    }
}
