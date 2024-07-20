resource "aws_instance" "ec2_nodes" {
  for_each        = var.component
  ami           = "ami-041e2ea9402c46c32"
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = ["sg-0a83697baaa6fe8b4"]

  tags = {
    Name = each.key
  }
}

variable "component" {
  default = {

    frontend={
      instance_type= "t3.small"
    }

    backend={
      instance_type= "t3.small"
    }

    mysql={
      instance_type= "t3.micro"
    }

  }
}