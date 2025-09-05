terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.11.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-backend-0509"
    key            = "envronments/dev/terraform.tfstate"
    dynamodb_table = "terraform-lockz"
    region         = "ap-southeast-1"
  }
}

provider "aws" {
  region = var.region
}

