# kms_key_module/outputs.tf

output "key_id" {
  description = "The ID of the KMS key"
  value       = aws_kms_key.this.key_id
}

output "arn" {
  description = "The ARN of the KMS key"
  value       = aws_kms_key.this.arn
}

