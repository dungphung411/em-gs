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

#Basic example for namespace
resource "rafay_namespace" "oach" {
  metadata {
    name    = "oach"
    project = "mdp"
  }
  spec {
    drift {
      enabled = false
    }
    placement {
      labels {
        key   = "rafay.dev/clusterName"
        value = "vmware-cluster-mdp"
      }
    }
  }
}