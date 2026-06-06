# Felhőalapú számítástechnika – Féléves beadandó

**Neptun-kód:** U85Q68  
**Megvalósítás módja:** Azure Portal  

---

## Választott feladat

Teljes alap-infrastruktúra kiépítése az Azure Portalon keresztül:

- 1 db Resource Group
- 1 db Virtual Machine
- 1 db Azure SQL Server + SQL Database

---

## Megvalósítás összefoglalója

### 1. Resource Group – `felhoalapu-rg`

Az összes erőforrás logikai tárolója. Régió: West Europe.  
A Resource Group törlésekor az összes benne lévő erőforrás automatikusan törlődik.

### 2. Virtual Machine – `Felhoalapu`

Ubuntu Server 24.04 LTS alapú virtuális gép, West Europe régióban (Availability Zone 3).

Főbb beállítások:
- **Méret:** Standard_B2ls_v2 (2 vCPU, 4 GB RAM)
- **OS lemez:** Premium SSD, 30 GB
- **Hitelesítés:** SSH public key (RSA)
- **Felhasználónév:** ladmin
- **Hálózat:** Felhoalapu-vnet (10.0.0.0/16), publikus IP, NSG SSH (22) port nyitva
- **Publikus IP és NIC törlése VM törlésekor:** engedélyezve

A VM sikeres létrehozása után PuTTY segítségével SSH kapcsolatot létesítettem a gépre, a kapcsolódás sikeresen megtörtént.

### 3. Azure SQL Server + Database – `felhoalapu-sql` / `felhoalapu-db`

SQL Server és adatbázis létrehozása Sweden Central régióban (West Europe nem volt elérhető a free trial subscription számára).

Főbb beállítások:
- **SQL Server neve:** felhoalapu-sql.database.windows.net
- **Adatbázis neve:** felhoalapu-db
- **Hitelesítés:** SQL authentication, admin: ladmin
- **Compute + storage:** General Purpose – Serverless, Standard-series Gen5, 1 vCore, 32 GB
- **Backup redundancia:** Locally-redundant
- **Hálózat:** Public endpoint, Azure services hozzáférés engedélyezve
- **TLS minimum verzió:** 1.2
- **Titkosítás:** Service-managed key

### 4. Kapcsolat tesztelése

A Virtual Machine-ről az `sqlcmd` segítségével sikeresen csatlakoztam az Azure SQL Database-hez:

A `SELECT @@VERSION` lekérdezés visszaadta a Microsoft SQL Azure verzióját, igazolva a sikeres kapcsolatot.

---

## Dokumentáció struktúrája

```
U85Q68_README.md
U85Q68_Dokumentacio/
├── VM/
│   ├── VM_01_Basics.png
│   ├── VM_02_Disks.png
│   ├── VM_03_Networking.png
│   ├── VM_04_Management.png
│   ├── VM_05_Monitoring.png
│   ├── VM_06_Advanced.png
│   ├── VM_07_ReviewCreate.png
│   ├── VM_08_Complete.png
│   └── VM_09_PuTTY.png
└── SQL/
    ├── SQL_01_Basics.png
    ├── SQL_02_DatabaseServer.png
    ├── SQL_03_Networking.png
    ├── SQL_04_Security.png
    ├── SQL_05_Additional.png
    ├── SQL_06_ReviewCreate.png
    ├── SQL_07_Complete.png
    └── SQL_PuTTY_SQL_VM_Kapcsolat.png
└── template.json  (Resource Group ARM export)
```
