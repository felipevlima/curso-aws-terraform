terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.14.0"
    }
  }

  backend "s3" {
    bucket  = "tfstate-120200077469"
    key     = "dev/01-usando-remote-state/terraform.tfstate"
    region  = "us-east-1"
    profile = "tf"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
