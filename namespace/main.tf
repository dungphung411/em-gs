
resource "rafay_namespace" "oach" {
  metadata {
    name    = "oach1"
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