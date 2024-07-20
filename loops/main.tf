variable "fruits"{
  default ={
    apple={}
    banana={}
  }
}

resource "null_resource" "test"
{
  for_each = var.fruits
}