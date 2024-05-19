resource "aws_instance" "front_end" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.small"

  tags = {
    Name = "frontend_instance"
  }
}

resource "aws_instance" "back_end" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.small"

  tags = {
    Name = "backend_instance"
  }
}

resource "aws_instance" "front_end" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.small"

  tags = {
    Name = "mysql_instance"
  }
}