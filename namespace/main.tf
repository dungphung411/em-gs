#Basic example for namespace
resource "rafay_namespace" "oach" {
  metadata {
    name    = "oachoach"
    project = "mdpmdp"
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