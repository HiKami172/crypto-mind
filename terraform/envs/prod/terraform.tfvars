# Resource Group
resource_group_name = "prod-resource-group"

# Container Registry
acr_name = "prod-acr-name"

# Backend
backend_sku = "P1v2"
backend_image_tag = "latest"
backend_app_name = "prod-backend-app"
docker_image_name = "prod-backend-image"
docker_registry_password = "your-prod-docker-registry-password"
docker_registry_url = "prod.acr.io"
docker_registry_username = "prod-docker-username"

# Frontend
frontend_repo_url = "https://github.com/your-org/prod-frontend-repo"
frontend_branch = "main"
frontend_app_name = "prod-frontend-app"

# PostgreSQL
postgresql_admin_username = "prod-admin"
postgresql_admin_password = "prod-db-password"
postgresql_db_name = "prod-db"

# Network
dns_zone_name = "prod.dns.zone"
subnet_name = "prod-subnet"
vnet_name = "prod-vnet"
