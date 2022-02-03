pragma solidity 0.8.4;

contract MemoryVsCalldata {
    event Log(string value);
    string someStorage = "test";

    // 9 44312 gas
    function emitSomeCalldataArg(string calldata beepboop) public {
        emit Log(beepboop);
    } 
    // rinkeby:         0x187ec1b8d047ad6f011f9959a3f81e782980f22ca0cede2e720f6c1fde664055
    // gas used:        23 932
    // optimism-kovan:  0xa0b63fff41a499ad2c9cadec36ad6cc25387d77ad1a3289d89eb40346555fc2d
    // gas used:        28 842 (l1 gas: 23932 + l2 gas: 4910)

    function emitSomeMemoryArg(string memory beepboop) public {
        emit Log(beepboop);
    } 
    // Almost 20% (19.97%) more gas intensive than l1
    //  rinkeby:        0xf5ecdece62b5fd01a01677ae948fb9e20fda2033e37327f3c47afc4cd4bca82c
    // gas used:        24 580
    // optimism-kovan:  0x87759c2fd52e71cdd5f2b75f793b7e37a536c3cee74131716bb660d85e221d77
    // gas used:        29 490 (l1 gas: 24580 + l2 gas: 4910)

    function emitSomeStorageArg() public {
        emit Log(someStorage);
    }
    //  rinkeby:        0x2cdd340f14159bf79ac3c0659d3899d3c98dbc89f3d75e9c47930ea51e95a47b  
    // gas used:        25 322
    // optimism-kovan:  0xd857a56b7af06fc2dac5c825517c14e2dd9551ec2ae17e7b140dd4888074885b
    // gas used:        29 720 (l1 gas: 25322 + l2 gas: 4398)

    function emitSomeStorageArgAsRef() public {
        string storage asReference = someStorage;
        emit Log(asReference);
    }
    //  rinkeby:        0xf57184dad59aab19523f82cac54b9f9576a70cc0dc8a9e7b47bc8450a1ef0307  
    // gas used:        25 283
    // optimism-kovan:  0x4ce7a8f0cbed9016410548427404c759d29989e6960f257c26bc2075e5ba654d
    // gas used:        29 681 (l1 gas: 25283 + l2 gas: 4398)
}