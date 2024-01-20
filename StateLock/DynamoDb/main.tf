provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "aws_s3_bucket" {
  bucket = "Dev-ops-bucket"
}



resource "aws_dynamodb_table" "state_lock" {
  name     = "state_lock"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S" #mention the type of object of the attribute
  }
}