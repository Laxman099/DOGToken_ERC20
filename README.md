# DOGToken_ERC20

# DogToken Smart Contract

The `DogToken` smart contract is an ERC20 token with minting and burning capabilities, leveraging the OpenZeppelin library for security and standard functionality.

## Contract Overview

- **Token Name:** DOGToken
- **Token Symbol:** DOG

## Features

1. **Minting:** Only the owner can mint new tokens.
2. **Burning:** Any token holder can burn their own tokens.
3. **Transfer** Transfer tokens 

## Contract Components

### Imports

- **ERC20:** Provides standard ERC20 token functionality.
- **Ownable:** Ensures that only the owner can perform certain actions.

### Variables

- `address public owner;` - The address of the contract owner.

### Constructor

- `constructor(address Owner)` - Initializes the contract, setting the token name and symbol, and assigns the owner.

### Modifiers

- `onlyOwner` - Restricts function access to the owner.

### Functions

- `function mint(address to, uint256 amount) public onlyOwner` - Mints new tokens to a specified address. Only callable by the owner.
- `function burn(uint256 amount) public` - Burns a specified amount of tokens from the caller's balance.

## Example Usage
- Go to Remix ide ([Remix ide](https://remix.ethereum.org/))
- create a new file naming DogToken.sol
- paste the contract ,compile and deploy
- you can use hardhat or other chains to deploy and test 
- go to the deployed contracts tab and test functionality .

# Author 
- Laxman 



