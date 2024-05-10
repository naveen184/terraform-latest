terraform {
  backend "s3" {
    bucket = "navi1234-s3-bucket"
    region = "ap-south-1"
    key = "demo/terraform.tfstate" #add prifix
    dynamodb_table = "terraform-lock1"
    
  }
}