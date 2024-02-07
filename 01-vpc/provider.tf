terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "aws-state-prod"
     key    = "vpc"
     region = "us-east-1"
     dynamodb_table = "aws-locking-prod"
  }
}

provider "aws" {
  region = "us-east-1"
}