terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.14.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.2.0"
    }
  }

  backend "s3" {
    # assume_role_policy_arns = templatefile("./policy.json")
    # assume_role_policy = templatefile("policy.json")
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "random_pet" "website" {
  length = 5
}
