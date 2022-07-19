terraform {
  required_version = ">= 1.0.0"

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