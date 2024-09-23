terraform {
  backend "s3" {
    bucket         = "depi-bucket-1"
    key            = "depi/statefile/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "depi-state-lock"// create this from console manually
  }
}