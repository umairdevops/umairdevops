terraform {
  required_version = "~> 1.9.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "prac-umair"
    region         = "ap-south-1"
    key            = "terraform.tfstate"
    dynamodb_table = "practice-umair"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
