# resource "null_resource" "test" {}

variable "x" {
  default = 10
}

output "x" {
  value = var.x
}
# lists
variable "list" {
  default = [10,
  "hai",
  true
  ]
}

output "list" {
  value = var.list
}

output "list2" {
  value = var.list[2]
}


