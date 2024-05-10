provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "demo" {
  instance_type = "t2.micro"
  ami = "ami-013e83f579886baeb" 
  subnet_id = "subnet-02c9fcb8ca7e8b74a" 
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "navi1234-s3-bucket"

  
}

resource "aws_dynamodb_table" "terraform_lock1" {   #implimenting locking mechanisem using dynamoDb (to avoid conflict on terraforn state files same time) ex: if 2 engg can made a chande on same service atsame time locking mechanisum will holds lock one request when other request appiears
  name           = "terraform-lock1"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}