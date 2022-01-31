Motorbike
Difficulty 6/10

Ethernaut's motorbike has a brand new upgradeable engine design.

Would you be able to selfdestruct its engine and make the motorbike unusable ?

Things that might help:

EIP-1967
UUPS upgradeable pattern
Initializable contract

# Solution

## 1- find the main contract address

we know that address is located at `0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc` storage so we do `await web3.eth.getStorageAt(insance, 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc`

## 2- call initializer

Contract hasnt been initialise so we will call the contract initialiser in order then to be able to changed it's implementation

## 3- create a new contract implementation with a selfdestruct function

## 4- call selfdestruct function from contract delegatecall function
