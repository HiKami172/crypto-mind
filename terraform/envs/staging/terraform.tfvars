# Resource Group
resource_group_name = "staging-resource-group"

# Container Registry
acr_name = "staging-acr-name"

# Backend
backend_sku = "B2"
backend_image_tag = "staging"
backend_app_name = "staging-backend-app"
docker_image_name = "staging-backend-image"
docker_registry_password = "your-staging-docker-registry-password"
docker_registry_url = "staging.acr.io"
docker_registry_username = "staging-docker-username"

# Frontend
frontend_repo_url = "https://github.com/your-org/staging-frontend-repo"
frontend_branch = "main"
frontend_app_name = "staging-frontend-app"

# PostgreSQL
postgresql_admin_username = "staging-admin"
postgresql_admin_password = "staging-db-password"
postgresql_db_name = "staging-db"

# Network
dns_zone_name = "staging.dns.zone"
subnet_name = "staging-subnet"
vnet_name = "staging-vnet"
