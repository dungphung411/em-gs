terraform {
  required_providers {
    rafay = {
      version = ">= 0.1"
      source  = "RafaySystems/rafay"
    }
  }
}

provider "rafay" {
  provider_config_file = "D:/PROJECT/envmgmr/config.json"
}