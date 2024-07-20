module "app-module" {
  for_each = var.component
  source = "./app-module"
  ami    = data.aws_ami.ami.image_id
  instance_type = each.value["instance_type"]
  name = each.key
  vpc_security_group_ids = [data.aws_security_group.allow-all.id]
  zone_id=data.aws_route53_zone.main.zone_id
}