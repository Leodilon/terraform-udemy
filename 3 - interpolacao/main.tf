# fix as versoes dos recursos
terraform {
  required_version = "1.5.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.9.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}
# informa qual a cloud e qual a regiao
provider "aws" {
  region = var.aws_region
}