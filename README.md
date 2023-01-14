# DevTestToken — ERC20 token for dev testing
Sometimes you need an ERC20 token to test your **decentralized applications**. DevTestToken allows you to easily get a bunch of tokens to your wallet and then you are free to use it in any smart contract!

## Contracts
Used contracts:
- DevTestToken.sol Factory for deploying DevTestToken
- DevTestToken.sol - Implementation of the IERC20 interface by OpenZeppelin with added functionality to set decimals in the constructor and mint fixed amount of tokens with the mint function.
- IERC20.sol, IERC20Metadata.sol, Context.sol

## Try it yourself
Create a .env file in the root folder containing:
- GOERLI_PRIVATE_KEY
- GOERLI_API_KEY

You can see how to set it up with a .env_sample file.

## Contribute
**Contributions are always welcome!**

Create a pull request to help or open an issue to share your suggestions.
If you deployed the contracts to the new network, please open the pull request also!