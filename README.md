# Contrato Inteligente — Token ERC-20

Token ERC-20 (`MiToken` / `MTK`) construido con **Solidity 0.8.28**, **OpenZeppelin Contracts 5.x** y **Hardhat 3**.

## Requisitos

- Node.js 22+ (Hardhat 3 lo requiere)
- npm 10+
- Git

## Puesta en marcha

```bash
npm install
npx hardhat compile
```

## Red local y despliegue

Terminal 1 — levantar la blockchain local:

```bash
npx hardhat node
```

Terminal 2 — desplegar con Hardhat Ignition:

```bash
npx hardhat ignition deploy ./ignition/modules/MiToken.ts --network localhost
```

Alternativa con script:

```bash
npx hardhat run scripts/deploy.ts --network localhost
```

## Estructura

```
contracts/MiToken.sol            Contrato ERC-20
ignition/modules/MiToken.ts      Módulo de despliegue (Ignition)
scripts/deploy.ts                Script de despliegue alternativo
hardhat.config.ts                Configuración de Hardhat
```

## Seguridad

- Nunca subas `.env` ni claves privadas al repositorio.
- Usa variables de entorno o `configVariable()` de Hardhat para secretos.
- Las claves privadas que muestra `npx hardhat node` son públicas y solo sirven en local.
- Antes de desplegar a una red real: tests, revisión de código y auditoría.
