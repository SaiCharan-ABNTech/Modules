variable "region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "launch_configuration_name" {
  description = "Name prefix for the launch configuration."
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the launch configuration."
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type to use."
  type        = string
}

variable "key_name" {
  description = "The key name to use for SSH access."
  type        = string
}

variable "security_groups" {
  description = "The security groups to associate with instances."
  type        = list(string)
}

variable "user_data" {
  description = "User data to configure instances."
  type        = string
  default     = ""
}

variable "desired_capacity" {
  description = "The desired number of instances."
  type        = number
}

variable "max_size" {
  description = "The maximum number of instances."
  type        = number
}

variable "min_size" {
  description = "The minimum number of instances."
  type        = number
}

variable "subnet_ids" {
  description = "The subnet IDs to launch instances in."
  type        = list(string)
}

variable "tag_name" {
  description = "The tag name for instances."
  type        = string
}

variable "policy_name" {
  description = "The name for the scaling policies."
  type        = string
}

variable "scaling_adjustment" {
  description = "The amount to adjust capacity by (positive for scale out, negative for scale in)."
  type        = number
}

variable "cooldown" {
  description = "The amount of time, in seconds, after a scaling activity completes before another scaling activity can start."
  type        = number
}

