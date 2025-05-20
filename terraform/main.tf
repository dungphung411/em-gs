provider "local" {}

# Resource to print the variables
resource "null_resource" "access_key" {
  provisioner "local-exec" {
    command = <<EOF
#######################################
#    Access Key: ${var.access_key}    #
#######################################
EOF
  }
}

resource "null_resource" "secret" {
  provisioner "local-exec" {
    command = <<EOF
###############################
#    Secret: ${var.secret}    #
###############################
EOF
  }
}
