# kms_key_module/main.tf

provider "aws" {
  region = "us-east-1"  # Set your preferred AWS region
}

resource "aws_kms_key" "this" {
  description = var.description
  enable_key_rotation = var.enable_key_rotation

}
