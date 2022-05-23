terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.15.1"
    }
  }

  backend "s3" {
    bucket         = "tfstate-120200077469"
    key            = "dev/05-workspaces/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tflock-tfstate-120200077469"
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "tf"
}

locals {
  env = terraform.workspace == "default" ? "dev" : terraform.workspace
}

resource "aws_instance" "web" {
  count = lookup(var.instance, local.env)["number"]

  ami           = lookup(var.instance, local.env)["ami"]
  instance_type = lookup(var.instance, local.env)["type"]

  tags = {
    Name = "Minha máquina web ${local.env}"
    Env  = local.env
  }
}
