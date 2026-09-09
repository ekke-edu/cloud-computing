# GitHub Actions és CI/CD

A **GitHub Actions** egy automatizált workflow-rendszer, amely lehetővé teszi a szoftverfejlesztési folyamatok automatizálását. A kurzusban a dokumentáció építését és közzétételét automatizáljuk, így a projekt mindig friss és publikált formában érhető el.

## 🚀 Mi a CI/CD?

- **Continuous Integration (CI):** A kód új változásainak folyamatos ellenőrzése és validálása
- **Continuous Deployment (CD):** A sikeres építés után automatikus publikálás és telepítés

## ⚙️ Működés röviden

1. A `.github/workflows/` mappában definiálunk egy YML workflow fájlt.
2. A pipeline telepíti a szükséges eszközöket, például a Pythont és a `mkdocs-material` csomagokat.
3. A rendszer lefuttatja az `mkdocs build` parancsot, majd a dokumentáció elkészítése után a `gh-pages` ágat frissíti.

## 📘 Kihasznált eszközök

- **GitHub Actions** a feladat automatizálásához
- **MkDocs** a dokumentáció generálásához
- **MkDocs Material** a modern, reszponzív dokumentációs felülethez
- **GitHub Pages** a publikációhoz

## ✅ Előnyök

- gyorsabb és hibamentesebb kiadási folyamat
- gyakorlatias automatizált dokumentációkezelés
- közös, reprodukálható build és deploy flow

---