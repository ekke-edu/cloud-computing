# Azure Infrastruktúra Beadandó Feladat

Ez a repozitórium (illetve dokumentáció) egy Microsoft Azure környezetben végzett felhő-infrastruktúra kiépítési és kezelési feladat lépéseit mutatja be.

## A projekt tartalma

A feladat során egy logikusan felépített, alapvető tesztkörnyezet került kialakításra, majd a folyamat végén szakszerűen törlésre. A főbb lépések és létrehozott erőforrások a következők:

1. **Erőforráscsoport (Resource Group):** - Név: `C7TC5Z_RG_Project`
   - Régió: North Europe
   - Célja: A projekt összes elemének összefogása és együttes kezelése.

2. **Virtuális gép (Virtual Machine):**
   - Név: `C7TC5Z-WebServer-01`
   - OS: Ubuntu Server 24.04 LTS (x64 Gen2)
   - Méret: Standard_B2ts_v2 (költséghatékony teszteléshez)
   - Elérés: SSH (22-es port) engedélyezve, jelszavas hitelesítéssel.

3. **Tárfiók (Storage Account):**
   - Név: `c7tc5zstorageacc01`
   - Beállítások: Standard teljesítmény, LRS (Locally Redundant Storage) redundancia.

4. **Költségoptimalizálás (Takarítás):**
   - A dokumentáció utolsó része bemutatja az erőforráscsoportok teljes és végleges törlését, amely elengedhetetlen a felesleges felhős költségek (kreditek) elkerülése érdekében.

## Dokumentáció

A részletes, lépésről lépésre haladó útmutató a képernyőképekkel együtt a beadott Word/PDF dokumentumban olvasható.