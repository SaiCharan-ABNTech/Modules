variable "region" {
  description = "The AWS region to deploy the RDS instance into."
  type        = string
  default     = "us-east-1"
}

variable "db_instance_identifier" {
  description = "The name of the database instance."
  type        = string
}

variable "engine" {
  description = "The database engine to use. (e.g., mysql, postgres, etc.)"
  type        = string
}

variable "instance_class" {
  description = "The instance type for the database."
  type        = string
  default     = "db.t3.micro"
}

variable "allocated_storage" {
  description = "The allocated storage for the database (in GB)."
  type        = number
  default     = 20
}

variable "storage_type" {
  description = "The type of storage to use. (e.g., gp2, io1)"
  type        = string
  default     = "gp2"
}

variable "db_name" {
  description = "The name of the database to create within the DB instance."
  type        = string
  default     = "mydatabase"
}

variable "username" {
  description = "The username for the database."
  type        = string
}

variable "password" {
  description = "The password for the database."
  type        = string
  sensitive   = true
}

variable "parameter_group_name" {
  description = "The DB parameter group to associate with the instance."
  type        = string
  default     = "default.mysql8.0"
}

variable "port" {
  description = "The port on which the database accepts connections."
  type        = number
  default     = 3306
}

variable "backup_retention_period" {
  description = "The number of days to retain backups for."
  type        = number
  default     = 7
}

variable "multi_az" {
  description = "Whether to create a multi-AZ deployment."
  type        = bool
  default     = false
}

variable "publicly_accessible" {
  description = "Whether the database instance is publicly accessible."
  type        = bool
  default     = false
}

variable "storage_encrypted" {
  description = "Whether the database storage is encrypted."
  type        = bool
  default     = true
}

variable "kms_key_id" {
  description = "The ARN of the KMS key to use for encryption."
  type        = string
  default     = ""
}

variable "iam_database_authentication_enabled" {
  description = "Whether to enable IAM database authentication."
  type        = bool
  default     = false
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs to associate with the RDS instance."
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group to use for the RDS instance."
  type        = string
}

variable "availability_zone" {
  description = "The availability zone to create the RDS instance in."
  type        = string
}

