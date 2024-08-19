provider "aws" {
  region = var.region
}

resource "aws_route53_zone" "this" {
  name = var.domain_name
}

resource "aws_route53_record" "a_record" {
  zone_id = aws_route53_zone.this.zone_id
  name    = var.record_name
  type    = "A"
  ttl     = var.ttl
  records = var.a_record_values
}

resource "aws_route53_record" "cname_record" {
  zone_id = aws_route53_zone.this.zone_id
  name    = var.cname_record_name
  type    = "CNAME"
  ttl     = var.ttl
  records = var.cname_record_values
}

