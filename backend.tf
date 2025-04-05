terraform {
  backend "azurerm" {
    resource_group_name  = "smontri-resources"
    storage_account_name = "your_storage_account_name"
    container_name       = "your_container_name"
    key                  = "ynov.tfstate"
    tenant_id            = "38e72bba-3c22-4382-9323-ac1612931297"
    subscription_id      = "c10b661f-7a09-44f4-b6c5-aa37c4d5263c"
  }
}