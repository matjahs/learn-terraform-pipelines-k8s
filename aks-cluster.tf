resource "random_pet" "prefix" {}

resource "azurerm_resource_group" "default" {
  name     = "MC_liked-feline-rg_liked-feline-aks_westeurope"
  location = "westeurope"

  tags = {
    environment   = "dev"
    owner         = "Terraform"
    business_unit = "IM"
  }
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = "${random_pet.prefix.id}-aks"
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = "${random_pet.prefix.id}-k8s"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_B2s"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.app_id
    client_secret = var.password
  }

  role_based_access_control_enabled = true

  tags = {
    environment   = "dev"
    owner         = "Terraform"
    business_unit = "IM"
  }
}
