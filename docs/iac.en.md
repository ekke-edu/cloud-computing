
# IaC – Infrastructure as Code

**Infrastructure as Code** (IaC) allows cloud resources to be created and managed through declarative configuration files instead of manual steps. In this course, we use Terraform to provision Azure resources automatically.

## 🎯 Goal

- Ensure reproducible environments
- Reduce manual configuration effort
- Track infrastructure changes in version control
- Deploy consistently across multiple environments

## ☁️ Azure services involved

- **Compute:** Virtual Machines, App Services
- **Storage:** Storage Accounts, SQL Database
- **Networking:** Virtual Networks, Network Security Groups
- **Security & Identity:** Key Vaults, Entra ID

## 🛠 Using Terraform

1. **Azure login and subscription setup:**
   ```bash
   az login
   az account set --subscription "Subscription Name or ID"
   ```
2. **Initialize and validate Terraform:**
   ```bash
   terraform init
   terraform fmt
   terraform validate
   ```
3. **Deploy and destroy infrastructure:**
   ```bash
   terraform plan -out=tfplan
   terraform apply "tfplan"
   # To remove resources:
   terraform destroy
   ```

## ✅ Why it matters

IaC not only makes infrastructure deployment faster and more reliable, but also improves visibility and change tracking in cloud environments. It is a core practice in modern DevOps and cloud architecture.