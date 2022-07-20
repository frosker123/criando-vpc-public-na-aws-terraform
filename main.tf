/**
 * # Terraform AWS: Public VPC
 *
 * Módulo de Terraform para criação de VPC Pública na AWS.
 *
 * [![Terraform Docs](https://github.com/frosker123/criando-vpc-public-na-aws-terraform/actions/workflows/terraform-docs.yml/badge.svg)](https://github.com/frosker123/criando-vpc-public-na-aws-terraform/actions/workflows/terraform-docs.yml)
 */

terraform {
  required_version = "~> 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0 "
    }
  }

  backend "s3" {
    bucket = "fawkerss-bucket"
    key    = "aws/terraform/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = var.location

  default_tags {
    tags = var.instance_tags
  }
}
