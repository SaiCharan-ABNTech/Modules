variable "region" {
  description = "The AWS region to deploy the Route 53 resources"
  type        = string
  default     = "us-east-1"
}

variable "domain_name" {
  description = "The domain name for the hosted zone"
  type        = string
}

variable "record_name" {
  description = "The name of the A record"
  type        = string
}

variable "a_record_values" {
  description = "A list of IP addresses for the A record"
  type        = list(string)
}

variable "cname_record_name" {
  description = "The name of the CNAME record"
  type        = string
}

variable "cname_record_values" {
  description = "A list of CNAME values"
  type        = list(string)
  default = []
}

variable "ttl" {
  description = "The TTL (Time To Live) for the DNS records"
  type        = number
  default     = 300
}

