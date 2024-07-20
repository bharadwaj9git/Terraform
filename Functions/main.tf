variable "fruits" {}
output "apple" {
  value = "apple-quantity -${var.fruits["apple"]["quantity"]} , price -${var.fruits["apple"]["price"]}"
}