variable "fruits" {}
output "apple" {
  value = "apple-quantity -${var.fruits["apple"]["quantity"]}, price -${var.fruits["apple"]["price"]}"
}
output "banana" {
  value = "banana-quantity -${lookup(var.fruits["banana"],"quantity",0.5)} , price -${lookup(var.fruits["banana"],"price",1000)}"
}