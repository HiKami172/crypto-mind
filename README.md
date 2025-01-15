
---

# **Cryptomind**

Cryptomind is an AI-powered platform designed to revolutionize your crypto trading experience. By linking your Binance account, you can seamlessly:
- Monitor your portfolio with ease.
- Interact with an **AI assistant** for natural language questions and trading tasks.
- Create and customize **LLM-powered trading bots** tailored to your needs.

## **Features**
- **Portfolio Monitoring:** Keep track of your cryptocurrency investments effortlessly.
- **AI Assistant:** Get answers to your crypto-related questions and automate trading tasks with the help of an advanced AI assistant.
- **Custom Trading Bots:** Design, configure, and deploy LLM-driven bots to optimize your trading strategies.

---

## **Repository Structure**

```plaintext
├── backend/           # FastAPI-based backend service
│   └── app/           # Backend application code
├── frontend/          # React TypeScript-based frontend application
│   └── src/           # Frontend application code
├── terraform/         # Terraform deployment scripts
│   ├── envs/          # Environment-specific Terraform variable files
│   │   ├── dev/       # Variables for development environment
│   │   ├── staging/   # Variables for staging environment
│   │   └── prod/      # Variables for production environment
│   ├── modules/       # Reusable Terraform modules for Azure resources
│   ├── main.tf        # Root Terraform configuration
│   ├── variables.tf   # Global variables used across Terraform modules
│   └── outputs.tf     # Outputs for deployed infrastructure
└── README.md          # This documentation
```

---

## **Deployment Guide**

### **Prerequisites**
Before you begin, ensure you have the following installed:
- [Terraform](https://www.terraform.io/downloads) (v1.3+ recommended)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/) (for manual image builds)

### **Setup Steps**

#### **1. Clone the Repository**
```bash
git clone https://github.com/your-repo/cryptomind.git
cd cryptomind
```

#### **2. Initialize Submodules**
This repository includes the `backend` and `frontend` as submodules. Initialize them with:
```bash
git submodule update --init --recursive
```

#### **3. Authenticate with Azure**
Log in to Azure CLI and set the desired subscription:
```bash
az login
az account set --subscription "your-subscription-id"
```

#### **4. Configure Environment Variables**
Update the environment-specific `.tfvars` file (e.g., `envs/dev/dev.tfvars`) with your project details:
```plaintext
# Example: envs/dev/dev.tfvars
resource_group_name = "cryptomind-rg"
acr_name            = "cryptomind-acr"
backend_app_name    = "cryptomind"
frontend_app_name   = "cryptomind-app"
postgresql_admin_username = "admin"
postgresql_admin_password = "yourpassword"
postgresql_db_name  = "cryptomind"
dns_zone_name       = "dev.dns.zone"
subnet_name         = "dev-subnet"
vnet_name           = "dev-vnet"
```

#### **5. Deploy Infrastructure**
Initialize Terraform:
```bash
terraform init
```

Validate the configuration:
```bash
terraform validate
```

Apply the configuration:
```bash
terraform apply -var-file="envs/dev/dev.tfvars"
```
Type `yes` when prompted to confirm the deployment.

#### **6. Build and Push Docker Images**
Manually build and push the backend image to Azure Container Registry:
```bash
docker login cryptomind-acr.azurecr.io
docker build -t cryptomind-acr.azurecr.io/dev-backend-image:latest ./backend/app
docker push cryptomind-acr.azurecr.io/dev-backend-image:latest
```

---

## **Usage**

### **Frontend**
The frontend static web app is deployed to Azure Static Web Apps. Visit the app URL (output by Terraform) to access the platform.

### **Backend**
The backend FastAPI service is hosted on Azure App Service. Use the app URL (output by Terraform) for API requests.

### **Database**
PostgreSQL Flexible Server is set up as the database. Use the connection string (output by Terraform) for database access.

---

## **Contributing**
We welcome contributions! To contribute:
1. Fork the repository.
2. Create a feature branch: `git checkout -b feature-name`.
3. Commit your changes: `git commit -m "Add feature"`.
4. Push to your branch: `git push origin feature-name`.
5. Open a pull request.

---

## **License**
Cryptomind is licensed under the [MIT License](./LICENSE).
