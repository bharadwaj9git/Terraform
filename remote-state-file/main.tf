resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "devsai79terraform"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}
