import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

/**
 * Módulo de despliegue de Hardhat Ignition.
 *
 * Usa la cuenta 0 de la red (en localhost, la primera cuenta de
 * `npx hardhat node`) como owner y receptora del suministro inicial.
 */
const MiTokenModule = buildModule("MiTokenModule", (m) => {
  const initialOwner = m.getAccount(0);

  const miToken = m.contract("MiToken", [initialOwner]);

  return { miToken };
});

export default MiTokenModule;
