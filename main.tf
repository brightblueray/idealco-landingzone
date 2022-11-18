terraform {
  cloud {
    organization = "brightblueray"

    workspaces {
      name = "idealco-landingzone-prod"
    }
  }
}

provider "azurerm" {
  features {}
}

module "idealco_rg" {
  source  = "app.terraform.io/brightblueray/idealco_rg/azure"
  version = "1.0.2"
}

output "rg-name" {
  value = module.idealco_rg.rg-name
}

output "subnet-id" {
  value = module.idealco_rg.subnet-id
}