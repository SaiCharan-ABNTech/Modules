module "elastic_beanstalk" {
  source              = "./elastic_beanstalk"
  region              = "us-west-2"
  application_name    = "my-app"
  application_description = "My Elastic Beanstalk application"
  environment_name    = "my-env"
  solution_stack_name = "64bit Amazon Linux 2 v3.7.2 running Python 3.7"
  cname_prefix        = "myapp"
  health_check_path   = "/health"
  tags                = {
    "Environment" = "production"
    "Owner"       = "team"
  }
}
