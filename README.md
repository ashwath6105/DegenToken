# Building on Avalanche - ETH + AVAX

This is a basic solidity smart contract for implementing DEGEN tokens and exploring it's functionalities.

## Description

This programme is for developing Degen tokens and investigating their numerous applications and functionalities. The user can mint, burn, transfer, and redeem in-game items in addition to minting and burning tokens.

The in-game items in this solidity contract are: 

1. Hoodie

2. Action Figure

3. Watch

For Degen Gaming, we introduce this ERC20 token on the Avalanche network.

## Running the code

You can either fork the repo or download the zip file under code.

After downloading the code , you can 
try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
npx hardhat run scripts/deploy.js --network fuji

```

The above command will deploy the smart contract.

```
npx hardhat verify <contract address> --network fuji
```
The above command will verify the smart contract on the testnet.

The contract verification and creation of the contract is showed on snowtrace platform. All the transactions of mint, burn ,transfer and redeem functions will be recorded on SnowTrace platform.


## Providing the wallet address and API key

Provide your wallet Private key and SnowTrace API key in a .env file in the following format for your transactions to be deployed and verified on the testnet.

```
WALLET_PRIVATE_KEY=
SNOWTRACE_API_KEY=
```


### Getting the AVX from Avalnche faucet

We require AVX tokens to operate the aforementioned solidity smart contract. In order to obtain AVX tokens on the Fuji(C-Chain) network, we visit the Avalanche testnet tap.

In order to receive the AVX tokens, we must connect our wallet. After doing this, we may deploy the solidity smart contract.


## Authors

Ashwath R

ashwathraju85@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
