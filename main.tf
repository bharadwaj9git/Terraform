module "frontend" {
  depends_on = [module.backend]
  source = "git::https://github.com/bharadwaj9git/tf-module.git"
  instance_type = var.components["frontend"]["instance_type"]
  name = var.components["frontend"]["name"]
  env = var.env
  port_no = var.components["frontend"]["port_no"]

}

