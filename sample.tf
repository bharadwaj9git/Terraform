 resource "null_resource" "test" {}
# variable dec nd access
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

# passing value dynamically
variable "Y" {}
 output "Y" {
   value = var.Y
 }