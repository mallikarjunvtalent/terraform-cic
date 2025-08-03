provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev" {
    ami = "ami-05ffe3c48a9991133"
    instance_type = "t2.micro"
    tags = {
      Name = "test"
    }
}
resource "aws_s3_bucket" "name" {  
  bucket = "mynewbucketfromterrafrom0123456789" 
}
