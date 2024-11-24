# Creating and Minting an ERC20 Token with Remix
A simple smart contract for creating and minting a token that follows the ERC20 standard.
The implementation of ERC20 by [OpenZeppelin](https://docs.openzeppelin.com/contracts/5.x/api/token/erc20#ERC20) is used in the smart contract

## Setup
1. Go to [Remix](https://remix.ethereum.org/)
2. Clone the repository

   ![image](https://github.com/user-attachments/assets/32c4a9e0-36b9-4cc0-991c-746f14a62650)

3. Compile MyToken.sol
    - Open `MyToken.sol` in the `contracts` folder
    - Make sure `MyToken.sol` is selected in the editor and the compiler version selected is at least `8.20.0`, then click `Compile MyToken.sol`
  
    ![image](https://github.com/user-attachments/assets/4d18e827-4f35-4946-b0b2-fb232ac9631b)


5. Deploy the Contract

  ![image](https://github.com/user-attachments/assets/3a83a442-b9a8-43de-872a-6c79ef4a3140)

  > [!NOTE]
  > when the contract is deployed, the selected account becomes the owner of the contract and 1000 tokens is minted to the same acccount


## Usage
### approve
  - `spender` - address of the account that will be allowed to spend from the currently selected account 
  - `value` - amount allowed for the spender to use

  example:

| Variable | Value |
|-|-|
| spender | `0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2` |
| value | `900` |

The selected account will allow `spender` to use `900` from the selected account's balance

### mint
  - `account` - address of the account to mint tokens to
  - `value` - amount of tokens to be minted
  
> [!NOTE]
> Can only be called when the selected account is the owner (i.e. the selected account when the contract is deployed)
  
### transfer
  - `to` - address of account to transfer to
  - `value` - amount of tokens to transfer
### transferFrom
  - `address` - address of account to tranfer from
  - `to` - address of account to transfer to
  - `value` - amount of tokens to transfer from `address` to `to`

> [!NOTE]
> The selected account must be allowed using `approve` to spend from the balance of `from`

### allowance
  - `owner` - address of an account to check for spenders
  - `spender` - address of the spender of `owner` (i.e. the account that was used in `approve`)
### balanceOf
  - `account` - address of an account to check the balance of
### name
  - name of the token
### symbol
  - symbol of the token
### totalSupply
  - total amount of tokens in the contract (initially 1000)
