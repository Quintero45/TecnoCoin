// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TecnoCoin is ERC20Capped, ERC20Burnable, Ownable {
    error MaxSupplyAlcanzado();

    constructor(uint256 initialSupply, uint256 maxSupply)
        ERC20("TecnoCoin", "TNC")
        ERC20Capped(maxSupply * 10 ** decimals())
        Ownable(msg.sender) // ✅ Ahora sí especificamos el owner correctamente
    {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        if (totalSupply() + (amount * 10 ** decimals()) > cap()) {
            revert MaxSupplyAlcanzado();
        }
        _mint(to, amount * 10 ** decimals());
    }

    // Necesario por conflicto entre ERC20 y ERC20Capped
    function _update(address from, address to, uint256 value)
        internal
        override(ERC20, ERC20Capped)
    {
        super._update(from, to, value);
    }
}
