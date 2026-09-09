# 🇭🇺 GitHub Actions és CI/CD

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

# 🇬🇧 GitHub Actions and CI/CD

**GitHub Actions** is an automation system for software development workflows. In this course, we automate the build and publication of documentation so the project is always available in its latest published form.

## 🚀 What is CI/CD?

- **Continuous Integration (CI):** Automatically validating code changes as they are introduced
- **Continuous Deployment (CD):** Automatically publishing and deploying after a successful build

## ⚙️ How it works

1. A workflow YAML file is defined in the `.github/workflows/` directory.
2. The pipeline installs the required tools such as Python and `mkdocs-material`.
3. It runs `mkdocs build` and then updates the `gh-pages` branch with the generated documentation.

## 📘 Tools used

- **GitHub Actions** for task automation
- **MkDocs** for documentation generation
- **MkDocs Material** for a modern responsive documentation theme
- **GitHub Pages** for publishing

## ✅ Benefits

- faster and more reliable release workflows
- automated documentation management
- reproducible build and deployment processes