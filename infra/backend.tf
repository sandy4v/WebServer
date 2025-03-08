terraform {
  backend "s3" {
    bucket = "my-tf-statefile-bckt"
    key    = "tfsetup/VPCTest.tfstate" #Path of state file in the S3 bucket
    region = "us-east-2"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "db-dynamo-tf-state"
    encrypt        = true
  }
}