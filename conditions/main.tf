variable "marks"{
  default=50
}
output "grade" {
  value= var.marks > 80 ? "frist class " : "second class"
}