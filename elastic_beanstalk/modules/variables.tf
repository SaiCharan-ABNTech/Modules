variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-west-2"
}

variable "application_name" {
  description = "The name of the Elastic Beanstalk application"
  type        = string
}

variable "application_description" {
  description = "The description of the Elastic Beanstalk application"
  type        = string
  default     = ""
}

variable "environment_name" {
  description = "The name of the Elastic Beanstalk environment"
  type        = string
}

variable "solution_stack_name" {
  description = "The name of the solution stack to use"
  type        = string
}

variable "cname_prefix" {
  description = "The CNAME prefix for the Elastic Beanstalk environment"
  type        = string
}

variable "health_check_path" {
  description = "The health check path for the environment"
  type        = string
  default     = "/"
}

variable "tags" {
  description = "Tags to apply to the environment"
  type        = map(string)
  default     = {}
}

