![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white)
![OpenTofu](https://img.shields.io/badge/OpenTofu-FFDA18?style=flat&logo=opentofu&logoColor=black)
![IaC](https://img.shields.io/badge/IaC-Infrastructure_as_Code-000000?style=flat)

# Azure-900 Alapok Terraform-mal

Ez a projekt az **Azure-900** vizsga alapvető Azure szolgáltatásait mutatja be Terraform infrastruktúra kód segítségével.

## Tartalom

A projekt a következő Azure szolgáltatásokat tartalmazza:
- **Compute**: Virtual Machines, App Services
- **Storage**: Storage Accounts, SQL Database
- **Networking**: Virtual Networks, Network Security Groups
- **Security & Identity**: Key Vaults, Entra ID
- **Monitoring**: Application Insights, Log Analytics, Alerts
- **Governance**: Resource Groups, Policies, Budgets, Service Health

## Használat

### Azure bejelentkezés és előfizetés beállítása
```bash
az login

az account set --subscription "Előfizetés Neve vagy ID-ja"
```

### Terraform inicializálás és validálás
```bash
terraform init

terraform fmt       # Automatikusan kijavítja a behúzásokat
terraform validate  # Megnézi, van-e elírás a kódban
```

### Infrastruktúra telepítése
```bash
terraform plan -out=tfplan

terraform apply "tfplan"
```

### Infrastruktúra törlése
```bash
terraform destroy
```
