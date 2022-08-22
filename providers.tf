# This was setup as a way to create a consolidated provider and a consolidated
# backend for our terraform state. In AWS I would use S3 and DynamoDB.
terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "=3.0.0"
        }
    }

    backend "azurem" {
        resource_group_name  = "StorageAccount-ResourceGroup"
        storage_account_name = "abcd1234"
        container_name       = "tfstate"
        key                  = "prod.terraform.tfstate"
    }
}

