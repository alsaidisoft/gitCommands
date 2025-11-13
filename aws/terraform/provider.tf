terraform {
  required_version = ">= 1.12.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    key          = "terraform.tfstate"
    encrypt      = true
    use_lockfile = true
  }
}
provider "aws" {
  region = var.aws_region
}
