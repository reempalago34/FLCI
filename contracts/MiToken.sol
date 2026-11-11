// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MiToken
 * @notice Token ERC-20 con suministro fijo, creado sobre OpenZeppelin.
 * @dev El suministro total se acuña una sola vez en el despliegue.
 *      No existe función de mint posterior, por lo que el suministro
 *      es inmutable (salvo las quemas voluntarias de los holders).
 */
contract MiToken is ERC20, ERC20Burnable, Ownable {
    /// @notice Suministro total: 1,000,000 tokens (18 decimales).
    uint256 public constant MAX_SUPPLY = 1_000_000 * 1e18;

    /**
     * @param initialOwner Dirección que recibe el suministro inicial
     *        y los permisos de administración (owner).
     */
    constructor(address initialOwner)
        ERC20("Mi Token", "MTK")
        Ownable(initialOwner)
    {
        _mint(initialOwner, MAX_SUPPLY);
    }
}
