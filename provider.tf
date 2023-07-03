
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Terraform AWS Provider version
    }
  }
  required_version = ">=1.5.0" # Terraform CLI version
}

provider "aws" {
  region = var.aws_region
}
