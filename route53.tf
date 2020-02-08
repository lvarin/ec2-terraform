locals {
  domain_name = "${var.subdomain_name}.${var.zone_name}"
}

data "aws_route53_zone" "zone" {
    name         = "${var.zone_name}."
}

resource "aws_route53_record" "domain" {
  name    = local.domain_name
  type    = "CNAME"
  zone_id = data.aws_route53_zone.zone.zone_id
  ttl     = 300
  records = ["${aws_instance.ssh.public_dns}"]
}

output "DNS" {
  value = aws_route53_record.domain.name
}
