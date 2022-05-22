terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.15.1"
    }
  }

  backend "s3" {
    bucket  = "tfstate-120200077469"
    key     = "dev/03-data-sources-s3/terraform.tfstate"
    region  = "us-east-1"
    profile = "tf"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
