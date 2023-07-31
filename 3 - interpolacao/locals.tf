#define variaveis locais, como se fossem constantes
locals {
  ips_filepath = "ips.json"

  common_tags = {
    Service     = "Curso Terraform"
    Environment = var.env
    ManagedBy   = "Terraform"
    Owner       = "Leonardo"
    UpdateDate  = "30/07/2023"
  }
}
