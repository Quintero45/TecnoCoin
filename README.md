# TecnoCoin (TNC) 🪙

**TecnoCoin** es un token ERC-20 construido con Solidity y OpenZeppelin, diseñado como una moneda digital para uso universitario. Fue creado como parte de una actividad académica relacionada con contratos inteligentes y blockchain.

## ✨ Características principales

- ✅ **ERC-20 estándar**
- 🔥 **Burnable:** permite destruir tokens.
- 🏗️ **Mintable:** solo el owner puede emitir nuevos tokens.
- 🔐 **Ownable:** control de funciones sensibles.
- ⛔ **Suministro máximo (`maxSupply`)** limitado.
- ⚠️ **Error personalizado** para evitar superar el supply total.

## 🛠️ Tecnologías usadas

- Solidity ^0.8.20
- OpenZeppelin Contracts v5.0
- Remix IDE
- MetaMask + Avalanche Fuji (Testnet)

## 📦 Despliegue

El contrato fue desplegado exitosamente en la red **Avalanche Fuji**.  
Puedes encontrar el contrato en Snowtrace:  
`[Pega aquí la dirección del contrato]`

## 🧠 Caso de uso

TecnoCoin está diseñado para funcionar como moneda digital interna dentro de una universidad. Los estudiantes pueden ganar TNC por rendimiento académico o participación institucional, y utilizarlo para servicios como impresión, cursos, biblioteca, sorteos, etc. A futuro, puede expandirse a otras universidades de Cartagena como red educativa descentralizada.

## 🚀 Cómo usar este contrato

1. Abre [Remix IDE](https://remix.ethereum.org/)
2. Copia el archivo `TecnoCoin.sol` en Remix.
3. Compílalo con Solidity 0.8.20
4. Conéctate a MetaMask usando Avalanche Fuji.
5. Despliega el contrato con:
   - `initialSupply`: 1000
   - `maxSupply`: 10000
6. ¡Listo! Interactúa con `mint()`, `burn()` y `balanceOf()` desde Remix.

## 📷 Capturas

Ve a la carpeta [`/screenshots`](./screenshots) para ver imágenes del proceso de despliegue y pruebas.

## 📝 Licencia

Este proyecto está bajo la licencia MIT.  
Puedes usarlo con fines educativos o como base para proyectos reales.

---

📍 **Desarrollado por:** [Tu nombre]  
🎓 Fundación Universitaria Tecnológico Comfenalco
