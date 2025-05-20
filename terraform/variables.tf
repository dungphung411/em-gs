# Define variables
variable "access_key" {
  description = "The access key for the environment"
  type        = string
}

variable "secret" {
  description = "The secret for the environment"
  type        = string
  sensitive   = true
}
