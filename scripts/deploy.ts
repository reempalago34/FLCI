import { network } from "hardhat";

/**
 * Despliegue alternativo mediante script (sin Ignition).
 * Ejecutar con:
 *   npx hardhat run scripts/deploy.ts --network localhost
 */
async function main() {
  const { ethers } = await network.connect();
  const [deployer] = await ethers.getSigners();

  console.log("Desplegando con la cuenta:", deployer.address);

  const miToken = await ethers.deployContract("MiToken", [deployer.address]);
  await miToken.waitForDeployment();

  const address = await miToken.getAddress();
  console.log("MiToken desplegado en:", address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
