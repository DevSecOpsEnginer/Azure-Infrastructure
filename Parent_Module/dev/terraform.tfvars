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

compute_instances = {
  "FE_Compute_instance" = {
    nsg_name                = "dev-eastus-nsg1"
    nsg_location            = "East US"
    nsg_resource_group_name = "dev-eastus-rg1"

    nsg_rule_name = "dev-eastus-nsg-rule1"

    nic_name                          = "dev-eastus-nic1"
    nic_location                      = "East US"
    nic_resource_group_name           = "dev-eastus-rg1"
    nic_ip_configuration_name         = "dev-eastus-ipconfig1"
    nic_subnet_id                     = "/subscriptions/9b5c4f38-6534-4978-808d-11b20dd8ad27/resourceGroups/dev-eastus-rg1/providers/Microsoft.Network/virtualNetworks/dev-eastus-vnet1/subnets/dev-frontend-subnet1"
    nic_public_ip_address_id          = "/subscriptions/9b5c4f38-6534-4978-808d-11b20dd8ad27/resourceGroups/dev-eastus-rg1/providers/Microsoft.Network/publicIPAddresses/dev-eastus-pubip1"
    nic_private_ip_address_allocation = "Dynamic"

    vm_name                = "dev-eastus-vm1"
    vm_resource_group_name = "dev-eastus-rg1"
    vm_location            = "East US"
    vm_size                = "Standard_D2s_v4"
    vm_admin_username      = "adminuser"
    vm_admin_password      = "P@ssw0rd1234!"

    vm_publisher = "Canonical"
    vm_offer     = "UbuntuServer"
    vm_sku       = "18.04-LTS"

  }

  "BE_Compute_instance" = {
    nsg_name                = "dev-eastus-nsg2"
    nsg_location            = "East US"
    nsg_resource_group_name = "dev-eastus-rg1"

    nsg_rule_name = "dev-eastus-nsg-rule2"

    nic_name                          = "dev-eastus-nic2"
    nic_location                      = "East US"
    nic_resource_group_name           = "dev-eastus-rg1"
    nic_ip_configuration_name         = "dev-eastus-ipconfig2"
    nic_subnet_id                     = "/subscriptions/9b5c4f38-6534-4978-808d-11b20dd8ad27/resourceGroups/dev-eastus-rg1/providers/Microsoft.Network/virtualNetworks/dev-eastus-vnet1/subnets/dev-backend-subnet2"
    nic_public_ip_address_id          = "/subscriptions/9b5c4f38-6534-4978-808d-11b20dd8ad27/resourceGroups/dev-eastus-rg1/providers/Microsoft.Network/publicIPAddresses/dev-eastus-pubip2"
    nic_private_ip_address_allocation = "Dynamic"

    vm_name                = "dev-eastus-vm2"
    vm_resource_group_name = "dev-eastus-rg1"
    vm_location            = "East US"
    vm_size                = "Standard_D2s_v4"
    vm_admin_username      = "adminuser"
    vm_admin_password      = "P@ssw0rd1234!"

    vm_publisher = "Canonical"
    vm_offer     = "UbuntuServer"
    vm_sku       = "18.04-LTS"

  }
}

publicIp = {
  "pub1" = {
    public_ip_name      = "dev-eastus-pubip1"
    resource_group_name = "dev-eastus-rg1"
    location            = "East US"
  }
  "pub2" = {
    public_ip_name      = "dev-eastus-pubip2"
    resource_group_name = "dev-eastus-rg1"
    location            = "East US"
  }
}

postgresql_flexible_server = {
  "postgresql1" = {
    postgresql_flexible_server_name = "dev-eastus-postgresql1"
    resource_group_name             = "dev-eastus-rg1"
    location                        = "East US"
    administrator_login             = "psqladmin"
    administrator_password          = "P@ssw0rd1234!"
  }
}

postgresql_flexible_server_database = {
  "db1" = {
    postgresql_flexible_server_database_name = "dev-eastus-db1"
    postgresql_flexible_server_id            = ""
  }
}

