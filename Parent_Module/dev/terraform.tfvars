resource_groups = {
  "rg1" = {
    name     = "dev-eastus-rg1"
    location = "East US"
  }
}

storage_accounts = {
  "sa1" = {
    storage_account_name     = "deveastussacc01"
    resource_group_name      = "dev-eastus-rg1"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

virtual_networks = {
  "vnet1" = {
    virtual_network_name = "dev-eastus-vnet1"
    resource_group_name  = "dev-eastus-rg1"
    location             = "East US"
    address_space        = ["10.0.0.0/16"]
    dns_servers          = ["10.0.0.4", "10.0.0.5"]
  }
}

subnets = {
  "frontend-subnet" = {
    subnet_name          = "dev-frontend-subnet1"
    resource_group_name  = "dev-eastus-rg1"
    virtual_network_name = "dev-eastus-vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  "backend-subnet" = {
    subnet_name          = "dev-backend-subnet2"
    resource_group_name  = "dev-eastus-rg1"
    virtual_network_name = "dev-eastus-vnet1"
    address_prefixes     = ["10.0.2.0/24"]
  }
} 