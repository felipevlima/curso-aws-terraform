terraform {
  required_version = "1.1.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.14.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "tf"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-12312412412312"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Felipe Vieira"
  }
}

resource "aws_s3_bucket_acl" "my-test-bucket" {
  bucket = "my-tf-test-bucket-12312412412312"
  acl    = "private"
}
