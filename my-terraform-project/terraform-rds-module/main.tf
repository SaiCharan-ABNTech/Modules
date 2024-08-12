provider "aws" {
  region = var.region
}

resource "aws_db_instance" "default" {
  identifier        = var.db_instance_identifier
  engine            = var.engine
  instance_class    = var.instance_class
  allocated_storage = var.allocated_storage
  storage_type      = var.storage_type
  db_name           = var.db_name
  username          = var.username
  password          = var.password
  parameter_group_name = var.parameter_group_name
  port              = var.port
  backup_retention_period = var.backup_retention_period
  multi_az          = var.multi_az
  publicly_accessible = var.publicly_accessible
  tags = {
    Name = var.db_instance_identifier
  }

  # Optional settings
  storage_encrypted = var.storage_encrypted
  kms_key_id        = var.kms_key_id
  iam_database_authentication_enabled = var.iam_database_authentication_enabled

  # VPC Security Groups and Subnets
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = var.db_subnet_group_name

  # Ensure the RDS instance is created in the correct VPC
  availability_zone = var.availability_zone
}

