terraform {
  required_version = "1.5.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.9.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-teste-bucket-terraform" {
  bucket = "my-teste-bucket-terraform-leodilon1234"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Leonardo"
    UpdateDate  = "23/07/2023"
  }
}

resource "aws_s3_bucket_ownership_controls" "my-teste-bucket-terraform" {
  bucket = aws_s3_bucket.my-teste-bucket-terraform.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "my-teste-bucket-terraform" {
  depends_on = [aws_s3_bucket_ownership_controls.my-teste-bucket-terraform]

  bucket = aws_s3_bucket.my-teste-bucket-terraform.id
  acl    = "private"
}

