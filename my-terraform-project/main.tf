module "rds" {
  source                = "./terraform-rds-module"
  db_instance_identifier = "my-rds-instance"
  engine                 = "mysql"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  storage_type           = "gp2"
  db_name                = "mydatabase"
  username               = "admin"
  password               = "securepassword"
  parameter_group_name   = "default.mysql8.0"
  port                   = 3306
  backup_retention_period = 7
  multi_az               = false
  publicly_accessible    = false
  storage_encrypted      = true
  kms_key_id             = ""
  iam_database_authentication_enabled = false
  vpc_security_group_ids = ["sg-12345678"]
  db_subnet_group_name   = "my-db-subnet-group-devinstance"
  availability_zone      = "us-west-2a"
}

