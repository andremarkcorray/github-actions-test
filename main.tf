provider "aws" {
  region = "ap-southeast-1" # e.g., "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "andre-terraform-state-bucket-github-workflow-demo" # e.g., "my-tf-state-bucket"
    key    = "terraform/s3-bucket.tfstate"       # e.g., "terraform/s3-bucket.tfstate"
    region = "ap-southeast-1"              # e.g., "us-east-1"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "andre-github-workflow-demo-s3" # e.g., "my-unique-bucket-name-2025"

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}