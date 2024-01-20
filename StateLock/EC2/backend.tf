terraform {
  backend "s3" {
    bucket = "Dev-ops-bucket"
    key = "default/terraform.tfstate"  # path & file which will hold the state
    region = "ap-south-1"
    dynamodb_table = "state_lock"
    encrypt = "true"
  }
}