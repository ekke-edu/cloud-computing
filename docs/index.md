# 🇭🇺 Felhőalapú számítástechnika – Kurzus Dokumentáció

Üdvözöllek a **Felhőalapú számítástechnika** kurzus hivatalos repository gyűjteményében! Ez a projekt a félév során elkészítendő feladatokat, adatmodelleket, lekérdezéseket és az "Infrastruktúra mint kód" (IaC) megvalósításokat tartalmazza.

📚 **Kurzus Info:** [io.uni-eszterhazy.hu](https://io.uni-eszterhazy.hu/downloadCourseInfo/101962)  
🎓 **AWS Student Rewards:** [Ingyenes hivatalos képzések](https://builder.aws.com/content/3IRJEGWoUOpmcx9pVHiUGTeXu2t/aws-student-rewards-the-fastest-road-to-21-badges)  
📖 **Tananyag:** [AZ-900 Exam Guide – Azure Fundamentals](https://mslearn.cloudguides.com/guides/AZ-900%20Exam%20Guide%20-%20Azure%20Fundamentals)

## 📌 Technológiai fókusz és Repository szerkezet

A kurzus során a felhőalapú stratégiai szemléletmód és az elméleti alapok elsajátítása mellett nagy hangsúlyt fektetünk a gyakorlati megvalósításra (Azure Portal, Terraform, CI/CD).

| Ág (Branch) / Projekt | Leírás | Fő Technológiák |
| :--- | :--- | :--- |
| `main` | Alapvető fejlesztői környezet, DevContainer konfiguráció, FastAPI backend | Docker, VS Code, Python, FastAPI |
| `feature/terraform` | AZ-900 vizsga alapvető Azure szolgáltatásainak bemutatása infrastruktúra kód segítségével | Terraform, Azure CLI |
| `feature/cicd-gh-pages` | Folyamatos integráció és szállítás (CI/CD), automatizált dokumentáció | GitHub Actions, MkDocs |

---

## 🛠 1. Fejlesztői környezet telepítése és indítása (`main` branch)

A kurzus során egy egységes, konténerizált fejlesztői környezetet használunk, amely garantálja, hogy minden hallgatónál ugyanazok a verziók és függőségek fussanak.

### Előfeltételek
- **Git** verziókezelő
- **Docker** (Docker Desktop, vagy WSL2/Linux natív Docker környezet)
- **Visual Studio Code** a következő kiterjesztéssel:
  - *Dev Containers* (Microsoft)

### Projekt indítása
1. **Repository klónozása:**
   ```bash
   git clone <repository_url>
   cd cloud-computing
   ```
2. **Megnyitás VS Code-ban és Dev Container indítása:**
   - Nyisd meg a mappát VS Code-ban (`code .`).
   - A jobb alsó sarokban megjelenő értesítésnél kattints a **Reopen in Container** gombra, VAGY nyomd meg a `Ctrl+Shift+P` kombinációt, és válaszd a `Dev Containers: Reopen in Container` opciót.

3. **Alkalmazás futtatása:**
   A terminálban (a konténeren belül) indítsd el a fejlesztői szervert:
   ```bash
   fastapi dev
   # VAGY
   uvicorn app.main:app --reload --host 0.0.0.0
   ```
   Az automatikus API dokumentációt (Swagger UI) a böngésződben a `http://localhost:8000/docs` címen éred el.

---

## ☁️ 2. Azure-900 Alapok Terraform-mal (`feature/terraform` branch)

Ez a modul az "Infrastruktúra mint kód" (IaC) elv alkalmazását mutatja be deklaratív erőforrás-kezelésen keresztül.

### Érintett Azure Szolgáltatások
- **Compute:** Virtual Machines, App Services
- **Storage:** Storage Accounts, SQL Database
- **Networking:** Virtual Networks, Network Security Groups
- **Security & Identity:** Key Vaults, Entra ID

### Terraform Használat
1. **Azure bejelentkezés és előfizetés beállítása:**
   ```bash
   az login
   az account set --subscription "Előfizetés Neve vagy ID-ja"
   ```
2. **Terraform inicializálás és validálás:**
   ```bash
   terraform init
   terraform fmt       # Automatikusan kijavítja a behúzásokat
   terraform validate  # Megnézi, van-e elírás a kódban
   ```
3. **Infrastruktúra telepítése (Deploy) és Törlése:**
   ```bash
   terraform plan -out=tfplan
   terraform apply "tfplan"
   # Törléshez:
   terraform destroy
   ```

---

## 🚀 3. Folyamatos Integráció és Dokumentáció (`feature/cicd-gh-pages` branch)

Ez az ág a CI/CD (Continuous Integration / Continuous Deployment) folyamatokat mutatja be GitHub Actions segítségével. A cél a projekt dokumentációjának automatikus generálása és közzététele MkDocs használatával.

### GitHub Actions és MkDocs
- **Automatikus építés (Build):** Minden alkalommal, amikor új kódot töltünk fel (push) a main vagy a dokumentációs ágra, egy GitHub Actions workflow elindul.
- **MkDocs Material:** A statikus weblap (amit most is olvasol) generálásához a népszerű `mkdocs-material` témát használjuk, amely gyors, reszponzív és Markdown alapú.
- **GitHub Pages Publikálás:** A sikeres építést követően az Action automatikusan frissíti a `gh-pages` ágat, így a legújabb dokumentáció azonnal elérhetővé válik a böngészőben.

### Működés röviden
1. A `.github/workflows/` mappában található YML fájl definiálja a lépéseket.
2. A pipeline telepíti a Pythont és a szükséges csomagokat (`mkdocs`, `mkdocs-material`).
3. Futtatja az `mkdocs build` és `mkdocs gh-deploy` parancsokat a háttérben.

***

# 🇬🇧 Cloud Computing – Course Documentation

Welcome to the official repository collection for the **Cloud Computing** course! This organization contains the assignments, data models, queries, and Infrastructure as Code (IaC) implementations for the semester.

📚 **Course Info:** [io.uni-eszterhazy.hu](https://io.uni-eszterhazy.hu/downloadCourseInfo/101962)  
🎓 **AWS Student Rewards:** [Free official training](https://builder.aws.com/content/3IRJEGWoUOpmcx9pVHiUGTeXu2t/aws-student-rewards-the-fastest-road-to-21-badges)  
📖 **Study Guide:** [AZ-900 Exam Guide – Azure Fundamentals](https://mslearn.cloudguides.com/guides/AZ-900%20Exam%20Guide%20-%20Azure%20Fundamentals)

## 📌 Technology Focus & Repository Structure

Throughout the course, we focus on understanding cloud-based strategic thinking and mastering practical implementations using modern DevOps tools.

| Branch / Project | Description | Key Technologies |
| :--- | :--- | :--- |
| `main` | Base development environment, DevContainer config, FastAPI backend | Docker, VS Code, Python, FastAPI |
| `feature/terraform` | Introduction to fundamental AZ-900 Azure services using Infrastructure as Code | Terraform, Azure CLI |
| `feature/cicd-gh-pages` | Continuous Integration and Deployment (CI/CD), automated documentation | GitHub Actions, MkDocs |

---

## 🛠 1. Setting up the Development Environment (`main` branch)

We use a unified, containerized development environment for this course. This guarantees that all students have the exact same dependencies and tool versions.

### Prerequisites
- **Git**
- **Docker** (Docker Desktop, or native Docker on WSL2/Linux)
- **Visual Studio Code** with the following extension:
  - *Dev Containers* (by Microsoft)

### Project Setup
1. **Clone the repository:**
   ```bash
   git clone <repository_url>
   cd cloud-computing
   ```
2. **Open in VS Code and start Dev Container:**
   - Open the folder in VS Code (`code .`).
   - Click **Reopen in Container** in the bottom right notification popup, OR press `Ctrl+Shift+P` and select `Dev Containers: Reopen in Container`.

3. **Run the Application:**
   Inside the container's terminal, start the development server:
   ```bash
   fastapi dev
   # OR
   uvicorn app.main:app --reload --host 0.0.0.0
   ```
   You can access the automated API documentation (Swagger UI) in your browser at `http://localhost:8000/docs`.

---

## ☁️ 2. Azure-900 Fundamentals with Terraform (`feature/terraform` branch)

This module demonstrates the "Infrastructure as Code" (IaC) principle through declarative resource management.

### Covered Azure Services
- **Compute:** Virtual Machines, App Services
- **Storage:** Storage Accounts, SQL Database
- **Networking:** Virtual Networks, Network Security Groups
- **Security & Identity:** Key Vaults, Entra ID

### Using Terraform
1. **Azure Login and Subscription Setup:**
   ```bash
   az login
   az account set --subscription "Subscription Name or ID"
   ```
2. **Terraform Initialization and Validation:**
   ```bash
   terraform init
   terraform fmt       # Automatically formats the code
   terraform validate  # Checks for syntax errors
   ```
3. **Deploy and Destroy Infrastructure:**
   ```bash
   terraform plan -out=tfplan
   terraform apply "tfplan"
   # To clean up:
   terraform destroy
   ```

---

## 🚀 3. Continuous Integration and Documentation (`feature/cicd-gh-pages` branch)

This branch demonstrates CI/CD (Continuous Integration / Continuous Deployment) processes using GitHub Actions. Its primary goal is the automated generation and publishing of the project's documentation using MkDocs.

### GitHub Actions and MkDocs
- **Automated Build:** Every time new code is pushed to the main or documentation branch, a GitHub Actions workflow is triggered.
- **MkDocs Material:** We use the popular `mkdocs-material` theme to generate the static website (which you are reading right now). It is fast, responsive, and Markdown-based.
- **GitHub Pages Publishing:** Upon a successful build, the Action automatically updates the `gh-pages` branch, making the latest documentation instantly available in the browser.

### How it works
1. The YML file in the `.github/workflows/` directory defines the pipeline steps.
2. The pipeline sets up Python and installs required packages (`mkdocs`, `mkdocs-material`).
3. It executes the `mkdocs build` and `mkdocs gh-deploy` commands in the background.

**License:** This project is licensed under the MIT License.
