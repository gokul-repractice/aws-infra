terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}
 terraform {
  backend "s3" {    # keeping this in backend.tf
    bucket = "gokul-state-dev"
    key    = "vpc"
    region = "us-east-1"
    dynamodb_table = "gokul-locking-dev"
  }
 }
       
provider "aws" {         
    region = "us-east-1"
}