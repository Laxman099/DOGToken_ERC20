// contracts/MyToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DogToken is ERC20{

    address public owner;

    constructor(address Owner) ERC20("DOGToken", "DOG") {
        owner = Owner;
    }

      modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

       function customTransferr(address recipient, uint256 amount) public returns (bool) {
        require(amount > 0, "Amount must be greater than zero");
        require(balanceOf(_msgSender()) >= amount, "Insufficient balance");

        _transfer(_msgSender(), recipient, amount);
        return true;
    }
}
