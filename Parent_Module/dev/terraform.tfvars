resource_groups = {
  "rg1" = {
    name     = "dev-eastus-rg1"
    location = "East US"
  }
}

storage_accounts = {
  "sa1" = {
    storage_account_name     = "dev-eastus-storageaccount-01"
    resource_group_name      = "dev-eastus-rg1"
    location                 = "East US"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}
