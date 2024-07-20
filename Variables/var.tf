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

# map variable

variable "map" {
  default = {
    course = "DevOps"
    fruit = "Apple"
  }
}

output "l" {
  value = var.map["course"]
}


variable "D" {}
output "D" {
  value = var.D
}

variable "env" {}
output "env" {
  value = var.env
}

variable "url" {}
output "url" {
  value = var.url
}