![React](https://img.shields.io/badge/React-20232A?style=flat&logo=react&logoColor=61DAFB)
![Vite](https://img.shields.io/badge/Vite-B73BFE?style=flat&logo=vite&logoColor=FFD62E)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)
![DevContainers](https://img.shields.io/badge/DevContainers-0078D4?style=flat&logo=visualstudiocode&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat&logo=githubactions&logoColor=white)

# ☁️ Felhőalapú számítástechnika – Fejlesztői környezet

Üdvözöllek a **Felhőalapú számítástechnika** kurzuson!

A félév során modern felhőalapú alkalmazások fejlesztésével és üzemeltetésével foglalkozunk. Annak érdekében, hogy minden hallgató ugyanazt a fejlesztői környezetet használja, a kurzushoz egy **Dev Container** alapú környezetet biztosítunk.

A Dev Container segítségével nincs szükség külön Node.js vagy egyéb fejlesztői eszközök telepítésére. A teljes környezet automatikusan felépül Docker segítségével, és minden szükséges függőség telepítésre kerül.

---

# 🛠️ Előfeltételek

A kezdés előtt telepítsd az alábbi programokat:

1. **Git**
2. **Docker Desktop**
   - Indítsd el, és hagyd futni a háttérben.

3. **Visual Studio Code**
4. VS Code bővítmény:
   - **Dev Containers** (Microsoft)

---

# 🚀 Projekt telepítése és indítása

## 1. Repository klónozása

Nyiss egy terminált, majd klónozd a projektet:

```bash
git clone <REPOSITORY_LINK>
cd <PROJEKT_MAPPÁJA>
```

---

## 2. Projekt megnyitása VS Code-ban

A projekt könyvtárában futtasd:

```bash
code .
```

---

## 3. Dev Container indítása

A VS Code automatikusan felismeri a projektben található `.devcontainer` konfigurációt.

A jobb alsó sarokban megjelenik:

> Folder contains a Dev Container configuration file

Kattints:

> **Reopen in Container**

Az első indítás néhány percet igénybe vehet, mert a Docker letölti a szükséges image-eket és létrehozza a fejlesztői környezetet.

---

# 📦 Mi történik automatikusan?

A Dev Container indításakor:

- létrejön a fejlesztői környezet;
- telepítésre kerül a Node.js;
- aktiválódik a `pnpm` csomagkezelő;
- lefut a projekt függőségeinek telepítése:

```bash
pnpm install
```

- telepítésre kerülnek az ajánlott VS Code bővítmények.

A saját gépedre nincs szükség külön Node.js vagy pnpm telepítésére.

---

# ▶️ Alkalmazás futtatása

A Dev Container termináljában futtasd:

```bash
pnpm dev
```

A sikeres indítás után az alkalmazás elérhető lesz:

```
http://localhost:5173
```

Ha a VS Code felajánlja a port megnyitását, válaszd az **Open in Browser** lehetőséget.

---

# 📁 Projekt felépítése

A repository főbb részei:

```
.
├── .devcontainer/       # Dev Container konfiguráció
├── public/              # Statikus fájlok
├── src/                 # React alkalmazás forráskódja
├── package.json         # Projekt függőségek és parancsok
├── pnpm-lock.yaml       # Függőségek verziózása
├── vite.config.ts       # Vite konfiguráció
└── README.md
```

---

# 📝 Fejlesztési folyamat

A feladatok során minden hallgató saját branchen dolgozik.

## Saját branch létrehozása

A Neptun-kód alapján hozz létre saját branchet:

```bash
git checkout -b SAJAT_BRANCH
```

Példa:

```bash
git checkout -b ABC123
```

---

## Módosítások mentése

A munkád során rendszeresen készíts commitokat:

```bash
git add .
git commit -m "Feladat megoldása"
```

Majd töltsd fel a saját brandedre:

```bash
git push origin SAJAT_BRANCH
```

---

# ❕ Fontos szabályok

- A `main` branchre **nem dolgozunk közvetlenül**.
- Ne töltsd fel a `node_modules` mappát.
- Minden fejlesztést saját branchen végezz.
- A beadás módját mindig a kurzus aktuális követelményei szerint kövesd.

---

# 🆘 Hibaelhárítás

## Nem indul a Dev Container

Ellenőrizd:

- fut-e a Docker Desktop;
- telepítve van-e a Dev Containers bővítmény;
- próbáld újraépíteni a konténert:

```
Ctrl + Shift + P
→ Dev Containers: Rebuild Container
```

---

## Nem indul az alkalmazás

Próbáld újratelepíteni a függőségeket:

```bash
pnpm install
```

majd:

```bash
pnpm dev
```

---

## A böngésző nem éri el az alkalmazást

Ellenőrizd, hogy a Vite külső elérésre is figyel-e.

A `package.json`-ban:

```json
{
  "scripts": {
    "dev": "vite --host 0.0.0.0"
  }
}
```

---

# ✅ Készen állsz!

Ha a Dev Container sikeresen elindult és a `pnpm dev` fut, akkor a fejlesztői környezet készen áll a **Felhőalapú számítástechnika** kurzus feladatainak megoldására.
