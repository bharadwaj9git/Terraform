provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "front_end" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0a83697baaa6fe8b4"]

  tags = {
    Name = "frontend_instance"
  }
}
