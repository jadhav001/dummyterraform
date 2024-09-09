provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "three" {
  count         =  1
  ami           = "ami-00b8917ae86a424c9"
  instance_type = "t2.micro"
  tags = {
    Name = "mumbai-server"
  }
}

resource "aws_s3_bucket" "abcd" {
bucket = "devopshehcp"
}
