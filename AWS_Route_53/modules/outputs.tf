output "zone_id" {
  description = "The ID of the hosted zone"
  value       = aws_route53_zone.this.zone_id
}

output "zone_name" {
  description = "The name of the hosted zone"
  value       = aws_route53_zone.this.name
}

output "a_record_fqdn" {
  description = "The fully qualified domain name of the A record"
  value       = "${aws_route53_record.a_record.name}.${aws_route53_zone.this.name}"
}

output "cname_record_fqdn" {
  description = "The fully qualified domain name of the CNAME record"
  value       = "${aws_route53_record.cname_record.name}.${aws_route53_zone.this.name}"
}

