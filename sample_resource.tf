provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "front_end" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0a83697baaa6fe8b4"]

  tags = {
    Name = "frontend_instance"
  }
}
