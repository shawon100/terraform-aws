terraform {
  backend "s3" {
    bucket = "tf-remote-shawon-bucket"
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "tf-remote-shawon-bucket-table"
  }
}
