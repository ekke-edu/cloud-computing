[DVXH78_README.md](https://github.com/user-attachments/files/27642244/DVXH78_README.md)
# DVXH78 — Beadandó: Felhőszolgáltatások és CI/CD

**Hallgató:** Ballai Illés
**Neptun-kód:** DVXH78

## A beadandó tartalma

A feladat két, szabadon választott témakör részletes szakmai kifejtését kérte: egy AZ-900 elméleti témakört, valamint egy GitHub/GitLab CI/CD pipeline témát. A választásom:

- **AZ-900:** Azure Architecture & Services — az Azure globális infrastruktúrája (régiók, rendelkezésre állási zónák, régiópárok), az erőforrás-hierarchia (Management Group → Subscription → Resource Group → Resource), valamint a főbb szolgáltatáscsoportok (compute, networking, storage, databases) és SLA-megfontolások.
- **CI/CD:** GitHub Actions — workflow-fájl és GitHub Pages deploy. A dokumentáció tartalmaz egy működő, friss `deploy.yml` workflow-t a hivatalos action-ök legújabb verzióival (`actions/checkout@v4`, `configure-pages@v5`, `upload-pages-artifact@v3`, `deploy-pages@v4`).

## Mappastruktúra

```
DVXH78/
├── DVXH78_README.md          ← ez a fájl (összefoglaló)
└── DVXH78_Dokumentacio/
    ├── beadando.docx         ← elméleti kifejtés (2 témakör, 7 oldal A4)
    ├── deploy.yml            ← működő példa workflow
    └── screenshots/          ← képernyőképek a CI/CD részhez
```

## A CI/CD példa kipróbálása

A `deploy.yml` egy tetszőleges, statikus tartalmat (HTML/CSS/JS a `docs/` könyvtárban) tartalmazó GitHub repositoryba bemásolva azonnal működőképes. A teendők:

1. A workflow-fájlt helyezd el `.github/workflows/deploy.yml` néven.
2. A repository **Settings → Pages** menüjében a *Source* értékét állítsd **GitHub Actions**-re.
3. A `main` ágra push után a futás automatikusan elindul, a publikált oldal a `https://<felhasználó>.github.io/<repo>/` URL-en lesz elérhető.

A részletes magyarázat — lépésről lépésre — a `beadando.docx` II. fejezetében található.
