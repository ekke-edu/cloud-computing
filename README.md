# Féléves beadandó
Ez a mappa a Felhőalapú számítástechnika kurzus zárófeladatát tartalmazza. A projekt célja egy komplex Azure infrastruktúra megtervezése és automatizált kiépítése "Infrastructure as Code" (IaC) szemlélettel, Terraform használatával. A hallgatónak demonstrálnia kell az Azure alapszolgáltatások (Compute, Network, Storage, Security) ismeretét, valamint a Governance (irányítás) és Monitoring eszközök gyakorlati alkalmazását.

## Leadási útmutató
A feladatokat és a hozzájuk tartozó dokumentációt Neptun-kóddal ellátott mappákba vagy fájlnevekkel kell feltölteni azonosíthatóság céljából!
Példa a struktúrára:
* final-project/ABC123_Projekt_Dokumentacio.pdf
* final-project/ABC123_source_code/

## Elvárt tartalom
A beadandónak két fő részből kell állnia: 
* Terraform kódbázisból
* kísérő dokumentációból.

## Értékelési szempontok
Értékelési szempontok
A jegy az alábbi kritériumok alapján kerül meghatározásra (Összesen: 100 pont):
* Azonosítás (5 pont): A Neptun-kóddal történő pontos azonosítás és a határidő betartása.
* Működőképesség (30 pont): A Terraform kód hiba nélkül lefut (terraform validate és apply), és létrehozza a kért környezetet.
* Kódminőség (20 pont):
  - Változók (variables.tf) használata égetett értékek helyett.
  - Outputok (outputs.tf) használata (pl. a létrehozott VM IP címének kiírása).
  - Olvasható, formázott kód (terraform fmt).
* Biztonsági szemlélet (25 pont):
  - Nincsenek jelszavak a kódban (Key Vault vagy sensitive változók használata).
  - NSG szabályok szigorúsága (nem Any/Any szabályok).
* Governance és AZ-900 elvek (20 pont):
  - Lock-ok és Tag-ek helyes használata.
  - Megfelelő régió és méretezés választása.
* A Neptun-kóddal történő pontos azonosítás és a határidő betartása.

---
Sok sikert a projektmunkához!
