provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "demo-bucket" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
