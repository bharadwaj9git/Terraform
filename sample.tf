# resource "null_resource" "test" {}

variable "x" {
  default = 10
}

output "x" {
  value = var.x
}