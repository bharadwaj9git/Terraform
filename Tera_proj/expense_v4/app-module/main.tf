resource "aws_instance" "node" {
  ami           = var.ami
  instance_type = var.instance_type
vpc_security_group_id = var.vpc_security_group_id

tags = {
Name = var.name
}
}

resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "$(var.name)-dev.saidevops79.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.node.private_ip]
}
