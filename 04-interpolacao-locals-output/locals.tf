
locals {
  ip_file = "ips.json"
  common_tags = {
    Services    = "Curso Terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Felipe Vieira"
  }
}
