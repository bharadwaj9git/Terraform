variable "component" {
  default = {

    frontend={
      instance_type= "t3.small"
    }
    backend={
      instance_type= "t3.small"
    }

    mysql={
      instance_type= "t3.micro"
    }
  }
}

variable "ami" {
  default = "ami-041e2ea9402c46c32"
}
variable "vpc_security_group_ids" {
  default = ["sg-0a83697baaa6fe8b4"]
}
variable "zone_id" {
 default = "Z048613339SQPCT579LPE"
}
