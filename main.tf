provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "fortress_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "MySecureFortress"
  }
}


resource "aws_s3_bucket" "my_test_bucket" {
  bucket = "vijayyy-unique-test-bucket-2026" 
}
