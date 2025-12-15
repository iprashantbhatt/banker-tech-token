const hre = require("hardhat");

async function main() {
  console.log("Deploying BankerTechToken...");

  const token = await hre.ethers.deployContract("BankerTechToken");

  await token.waitForDeployment();

  console.log(`BankerTechToken deployed to: ${token.target}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
