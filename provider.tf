# Configure the provider software version
terraform {
  backend "s3" {
  bucket = "iti-bucket-4"
  dynamodb_table = "terraform-state-lock-dynamo"
  key    = "state.tfstate"
  region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
