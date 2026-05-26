resourcergs = {
  kushrg17 = "eastus"
  kushrg18 = "westus"
}
storageaccounts = {
  sa1 = {
    name                     = "kushstg17"
    location                 = "eastus"
    resource_group_name      = "kushrg17"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
  sa2 = {
    name                     = "kushstg18"
    location                 = "westus"
    resource_group_name      = "kushrg18"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}