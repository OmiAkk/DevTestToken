const { ethers } = require("hardhat");
const hre = require("hardhat");

async function main() {
    const DTTFactoryAddress = "0xa1C76E9f6991035B1A8c08D751414E571BE58359"; //Current Goerli contract address
    const decimals = 18
    const oneTimeMintAmount = ethers.utils.parseUnits("1000", decimals);

    const dTTFactory = await hre.ethers.getContractAt("DevTestTokenFactory", DTTFactoryAddress);

    await dTTFactory.CreateDTTToken(decimals, oneTimeMintAmount);
    console.log(`Created a DTTToken! Decimals: ${decimals}, oneTimeMintAmount: ${oneTimeMintAmount}`)
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
