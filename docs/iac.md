# IaC – Infrastruktúra mint kód

Az **Infrastruktúra mint kód** (Infrastructure as Code, IaC) megközelítés lehetővé teszi, hogy a felhőalapú erőforrásokat deklaratív módon, gép által olvasható konfigurációs fájlok segítségével hozzuk létre és kezeljük. A kurzusban a Terraformet használjuk az Azure erőforrások automatizált provisionálására.

## 🎯 Cél

- A környezetek reprodukálhatóságának biztosítása
- Manuális konfiguráció csökkentése
- Verziókezelés és dokumentáció a felhőinfrastrukturában
- Gyors és hibamentes telepítés több környezetben

## ☁️ Érintett Azure szolgáltatások

- **Compute:** Virtual Machines, App Services
- **Storage:** Storage Accounts, SQL Database
- **Networking:** Virtual Networks, Network Security Groups
- **Security & Identity:** Key Vaults, Entra ID

## 🛠 Terraform használat

1. **Azure bejelentkezés és előfizetés beállítása:**
   ```bash
   az login
   az account set --subscription "Előfizetés Neve vagy ID-ja"
   ```
2. **Terraform inicializálás és validálás:**
   ```bash
   terraform init
   terraform fmt
   terraform validate
   ```
3. **Infrastruktúra telepítése és törlése:**
   ```bash
   terraform plan -out=tfplan
   terraform apply "tfplan"
   # Törléshez:
   terraform destroy
   ```

## ✅ Miért fontos?

Az IaC nemcsak gyorsabb és biztonságosabb infrastruktúra-telepítést tesz lehetővé, hanem a felhőeszközök változásainak nyomon követését is. Ez alapvető a modern DevOps és cloud architektúrák kialakításában.

---