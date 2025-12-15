# 🏦 BankerTechToken (BTT)

![Solidity](https://img.shields.io/badge/Solidity-%5E0.8.20-363636?style=for-the-badge&logo=solidity&logoColor=white)
![Ethereum](https://img.shields.io/badge/Network-Sepolia_Testnet-3C3C3D?style=for-the-badge&logo=ethereum&logoColor=white)
![Status](https://img.shields.io/badge/Status-Live_Deploy-success?style=for-the-badge)

> **A Secure, Regulation-Ready Digital Asset Implementation.**
> Bridging traditional banking principles with blockchain technology.

---

## 📖 Project Overview

**BankerTechToken (BTT)** is a custom ERC-20 cryptocurrency designed to demonstrate the intersection of modern finance and decentralized ledgers. 

Built by a **Banking Professional**, this project emphasizes:
* **Security:** utilizing OpenZeppelin's battle-tested standard libraries.
* **Control:** Implementing `Ownable` permissions to simulate Central Bank authority (minting rights).
* **Standardization:** Fully compliant with the ERC-20 interface for wallet compatibility.

---

## ⚙️ Technical Specifications

| Feature | Detail |
| :--- | :--- |
| **Token Name** | BankerTechToken |
| **Symbol** | BTT |
| **Decimals** | 18 (Standard Wei precision) |
| **Initial Supply** | 1,000,000 BTT |
| **Contract Type** | ERC-20 |
| **Network** | Sepolia Testnet |

---

## 💻 The Smart Contract

The core logic uses inheritance to keep the code clean and secure:

```solidity
// Simplified Logic View
contract BankerTechToken is ERC20, Ownable {
    constructor() ERC20("BankerTechToken", "BTT") Ownable(msg.sender) {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
