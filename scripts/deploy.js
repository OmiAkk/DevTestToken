const hre = require("hardhat");

async function main() {
  const DTTFactory = await hre.ethers.getContractFactory("DevTestTokenFactory");
  const dTTFactory = await DTTFactory.deploy();
  console.log(
    `Deploying DevTestTokenFactory...`
  );

  await dTTFactory.deployed();

  console.log(
    `Deployed DevTestTokenFactory to ${dTTFactory.address}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
