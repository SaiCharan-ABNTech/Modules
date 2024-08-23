# kms_key_module/variables.tf

variable "description" {
  description = "Description of the KMS key"
  type        = string
  default     = "KMS key created by Terraform"
}

variable "enable_key_rotation" {
  description = "Whether to enable automatic key rotation"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to the KMS key"
  type        = map(string)
  default     = {}
}

