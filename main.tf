terraform {
  cloud {
    organization = "brightblueray"

    workspaces {
      name = "idealco-landingzone-dev"
    }
  }
}

provider "azurerm" {
  features {}
}

module "idealco_rg" {
  source  = "app.terraform.io/brightblueray/idealco_rg/azure"
  version = "2.0.1"
}

output "rg-name" {
  value = module.idealco_rg.rg-name
}

output "subnet-id" {
  value = module.idealco_rg.subnet-id
}