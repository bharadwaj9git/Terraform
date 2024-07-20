resource "aws_instance" "nodes" {
  ami           = var.ami
  instance_type = var.instance_type
vpc_security_group_id = var.vpc_security_group_id

tags = {
Name = var.name
}
}

