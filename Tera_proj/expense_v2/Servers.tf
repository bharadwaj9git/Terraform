resource "aws_instance" "back_end" {
  count         = length(var.component)
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0a83697baaa6fe8b4"]

  tags = {
    Name = var.component[count.index]
  }
}

variable "component" {
  default = ["frontend","backend","mysql"]
}
