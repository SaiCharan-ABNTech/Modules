provider "aws" {
  region = var.region
}

resource "aws_elastic_beanstalk_application" "this" {
  name        = var.application_name
  description = var.application_description
}

resource "aws_elastic_beanstalk_environment" "this" {
  name                = var.environment_name
  application         = aws_elastic_beanstalk_application.this.name
  solution_stack_name = var.solution_stack_name
  cname_prefix        = var.cname_prefix

  setting {
    namespace = "aws:elasticbeanstalk:application:environment"
    name      = "HealthCheckPath"
    value     = var.health_check_path
  }

  tags = var.tags
}
