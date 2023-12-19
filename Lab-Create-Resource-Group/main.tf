# We first specify the terraform provider. 
# Terraform will use the provider to ensure that we can work with Microsoft Azure

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.92.0"
    }
  }
}

# Here we need to mention the Azure AD Application Object credentials to allow us to work with 
# our Azure account

provider "azurerm" {
    subscription_id = "0b03cd52-5058-421a-9555-bdd3371ab590"
    client_id = "dafc302c-d0e3-4a7d-bdf4-505f23f7a400"
    client_secret = "Cu.8Q~afkQFKT1uekfI3I0ImcMr64VCjOhmYUdgr"
    tenant_id = "b0ac77ef-0577-4199-9cf2-036f07fedcfa" 
    features {}
}

# The resource block defines the type of resource we want to work with
# The name and location are arguements for the resource block

resource "azurerm_resource_group" "my_grp"{
  name="rgrp-tf" 
  location="North Europe"
}