
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {Vault} from "../src/Vault.sol";

contract DeployVault is Script {

    Vault vault;

    function run() external returns(Vault) {
        vm.startBroadcast();
        vault = new Vault("Hello World");
        vm.stopBroadcast();
        return vault;
    }

}