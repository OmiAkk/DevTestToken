// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./DevTestToken.sol";

/// @title Factory for deploying DevTestToken — ERC20 token for dev testing.
/// @author OmiAkk

/*
 * /$$$$$$$                    /$$$$$$$$                    /$$  /$$$$$$$$        /$$
 * | $$__  $$                  |__  $$__/                   | $$ |__  $$__/       | $$
 * | $$  \ $$  /$$$$$$  /$$    /$$| $$  /$$$$$$   /$$$$$$$ /$$$$$$  | $$  /$$$$$$ | $$   /$$  /$$$$$$  /$$$$$$$
 * | $$  | $$ /$$__  $$|  $$  /$$/| $$ /$$__  $$ /$$_____/|_  $$_/  | $$ /$$__  $$| $$  /$$/ /$$__  $$| $$__  $$
 * | $$  | $$| $$$$$$$$ \  $$/$$/ | $$| $$$$$$$$|  $$$$$$   | $$    | $$| $$  \ $$| $$$$$$/ | $$$$$$$$| $$  \ $$
 * | $$  | $$| $$_____/  \  $$$/  | $$| $$_____/ \____  $$  | $$ /$$| $$| $$  | $$| $$_  $$ | $$_____/| $$  | $$
 * | $$$$$$$/|  $$$$$$$   \  $/   | $$|  $$$$$$$ /$$$$$$$/  |  $$$$/| $$|  $$$$$$/| $$ \  $$|  $$$$$$$| $$  | $$
 * |_______/  \_______/    \_/    |__/ \_______/|_______/    \___/  |__/ \______/ |__/  \__/ \_______/|__/  |__/
 */
contract DevTestTokenFactory {
    event TokenCreation(
        address createdDTTAddress,
        uint8 decimals,
        uint128 oneTimeMintAmount
    );

    function CreateDTTToken(uint8 decimals_, uint128 oneTimeMintAmount_)
        external
    {
        DevTestToken dtt = new DevTestToken(
            decimals_,
            oneTimeMintAmount_,
            string(abi.encodePacked("DevTestToken", decimals_)),
            string(abi.encodePacked("DTT", decimals_))
        );

        emit TokenCreation(address(dtt), decimals_, oneTimeMintAmount_);
    }
}
