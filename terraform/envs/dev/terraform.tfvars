# Resource Group
resource_group_name = "cryptomind-rg"

# Container Registry
acr_name = "cryptomind-acr"

# Backend
backend_app_name = "cryptomind"
backend_sku = "B1"
docker_image_name = "busybox"
backend_image_tag = "latest"

# Frontend
frontend_repo_url = "https://github.com/HiKami172/crypto-mind-frontend"
frontend_branch = "main"
frontend_app_name = "cryptomind-app"

# PostgreSQL
postgresql_admin_username = "admin"
postgresql_admin_password = "<your-password>"
postgresql_db_name = "cryptomind"

# Network
dns_zone_name = "dev-private-dns-zone"
subnet_name = "dev-subnet"
vnet_name = "dev-vnet"
