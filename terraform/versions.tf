terraform {
  required_version = ">= 1.6.0"

  # Uncomment and update for remote state in S3.
  # backend "s3" {
  #   bucket       = "replace-with-terraform-state-bucket"
  #   key          = "devops-take-home/terraform.tfstate"
  #   region       = "us-east-1"
  #   encrypt      = true
  #   use_lockfile = true
  # }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
