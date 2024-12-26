terraform {
  required_version = ">= 1.0" 
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "example" {
  bucket = "shihabnoor786"
}

