# L1 vs L2 (ORU) gas usage
#### Memory vs calldata vs storage

Below is the gas usage data for the functions in [MemoryVsCalldata.sol](./contracts/MemoryVsCalldata.sol).

| Function | Network | gas used | L2 gas breakdown |
|:---------|:--------|:---------|:-----------------|
| `emitSomeCalldataArg` | L1 [(Rinkeby tx)](https://rinkeby.etherscan.io/tx/0x187ec1b8d047ad6f011f9959a3f81e782980f22ca0cede2e720f6c1fde664055) | 23 932 | 
| `emitSomeMemoryArg` | L1 [(Rinkeby tx)](https://rinkeby.etherscan.io/tx/0xf5ecdece62b5fd01a01677ae948fb9e20fda2033e37327f3c47afc4cd4bca82c) | 24 580 |
| `emitSomeStorageArgAsRef` | L1 [(Rinkeby tx)](https://rinkeby.etherscan.io/tx/0xf57184dad59aab19523f82cac54b9f9576a70cc0dc8a9e7b47bc8450a1ef0307) | 25 283 |
| `emitSomeStorageArg` | L1 [(Rinkeby tx)](https://rinkeby.etherscan.io/tx/0x2cdd340f14159bf79ac3c0659d3899d3c98dbc89f3d75e9c47930ea51e95a47b) | 25 322 |
| `emitSomeCalldataArg` | L2 [(Optimism Kovan tx)](https://kovan-optimistic.etherscan.io/tx/0xa0b63fff41a499ad2c9cadec36ad6cc25387d77ad1a3289d89eb40346555fc2d) | 28 842 | l1 gas: 23 932 + l2 gas: 4 910 
| `emitSomeMemoryArg` | L2 [(Optimism Kovan tx)](https://kovan-optimistic.etherscan.io/tx/0x87759c2fd52e71cdd5f2b75f793b7e37a536c3cee74131716bb660d85e221d77) | 29 490 | l1 gas: 24 580 + l2 gas: 4 910
| `emitSomeStorageArgAsRef` | L2 [(Optimism Kovan tx)](https://kovan-optimistic.etherscan.io/tx/0x4ce7a8f0cbed9016410548427404c759d29989e6960f257c26bc2075e5ba654d) | 29 681 | l1 gas: 25 283 + l2 gas: 4 398
| `emitSomeStorageArg` | L2 [(Optimism Kovan tx)](https://kovan-optimistic.etherscan.io/tx/0xd857a56b7af06fc2dac5c825517c14e2dd9551ec2ae17e7b140dd4888074885b) | 29 720 | l1 gas: 25 322 + l2 gas: 4 398
