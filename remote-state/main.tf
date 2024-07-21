resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "devsai79terraform"
    key    = "test/terraform.tfsate"
    region = "us-east-1"
  }
}
