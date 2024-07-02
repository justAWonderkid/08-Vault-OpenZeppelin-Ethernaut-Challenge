# What is OpenZeppelin Ethernaut?

OpenZeppelin Ethernaut is an educational platform that provides interactive and gamified challenges to help users learn about Ethereum smart contract security. It is developed by OpenZeppelin, a company known for its security audits, tools, and best practices in the blockchain and Ethereum ecosystem.

OpenZeppelin Ethernaut Website: [ethernaut.openzeppelin.com](https://ethernaut.openzeppelin.com/)

<br>

# What You're Supposed to Do?

in `08-Vault` Challenge, You Should Try To find a Way to Get the Password Stored Inside the `password` Variable.

`08-Vault` Challenge Link: [https://ethernaut.openzeppelin.com/level/0xB7257D8Ba61BD1b3Fb7249DCd9330a023a5F3670](https://ethernaut.openzeppelin.com/level/0xB7257D8Ba61BD1b3Fb7249DCd9330a023a5F3670)

<br>

# How did i Complete This Challenge?

Any Data that is Stored in a Variable in Blockchain, it Can be Read By Everyone. So the password stored inside the `password` variable, is not Secret.

in `DeployVault.s.sol`, i Put the Default Password to `Hello World`.

Here's How You Can Find out what the value of `private` variable is, that it does not have `getter` function inside it's own Codebase. By the Way this Only Can Be Done off-chain.

Run Local Anvil Chain:

```javascript
    anvil
```

Then Open Up Another Terminal Instance, And Run the Following Command the Deploy the `Vault` Contract:

```javascript
    forge script script/DeployVault.s.sol --rpc-url http://127.0.0.1:8545  --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast
```

then Grab the Deployed Contract Address and Run the Following Command:

```javascript
    cast storage <CONTRACT ADDRESS> <STORAGE SLOT>
    cast storage 0x5FbDB2315678afecb367f032d93F642f64180aa3 1
```

Take the Output of the Command Above and then Run the Following Command To Convert the bytes32 to string, So You Can Read What the `password` value is:

```javascript
    cast parse-bytes32-string 0x48656c6c6f20576f726c64000000000000000000000000000000000000000000
```

The Password is: `Hello World`.
