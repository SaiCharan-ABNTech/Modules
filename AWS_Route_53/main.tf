module "route53" {
  source         = "./path/to/terraform-route53-module"
  region         = "us-east-1"
  domain_name    = "xyzdomain.com"
  record_name    = "www.xyzdomain.com"
  a_record_values = ["192.0.2.1"]
  cname_record_name = "alias.example.com"
  cname_record_values = ["target.example.com"]
  ttl            = 300
}

