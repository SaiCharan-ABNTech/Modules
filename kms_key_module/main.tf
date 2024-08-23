# main.tf

provider "aws" {
  region = "us-east-1"
}

module "kms_key" {
  source               = "./kms_key_module"
  description          = "My KMS key for encryption"
  enable_key_rotation  = true
  tags                 = {
    Environment = "production"
    Project     = "my-project"
  }
}

output "kms_key_id" {
  value = module.kms_key.key_id
}

output "kms_key_arn" {
  value = module.kms_key.arn
}

