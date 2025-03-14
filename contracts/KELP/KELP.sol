// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/// @title CAMON - CamonDao's protocol token
contract CAMON is ERC20, ERC20Permit {
    constructor(address safeAddress) ERC20("CAMON", "CAMON") ERC20Permit("CAMON") {
        _mint(safeAddress, 1_000_000_000 * 10 ** decimals());
    }
}
