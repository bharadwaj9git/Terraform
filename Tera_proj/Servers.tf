resource "aws_instance" "front_end" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0a83697baaa6fe8b4"]

  tags = {
    Name = "frontend_instance"
  }
}

resource "aws_instance" "back_end" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0a83697baaa6fe8b4"]

  tags = {
    Name = "backend_instance"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0a83697baaa6fe8b4"]

  tags = {
    Name = "mysql_instance"
  }
}