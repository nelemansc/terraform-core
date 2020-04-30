data "aws_route53_zone" "selected" {
  name = var.domain-name
}

resource "aws_route53_record" "mx" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = ""
  type    = "MX"
  ttl     = "3600"
  records = var.mx
}

# google search index domain ownership verification
# https://support.google.com/webmasters/answer/9008080?hl=en

# forwardemail.net txt record to setup mail forwarding for cassidynelemans.com

resource "aws_route53_record" "txt" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = ""
  type    = "TXT"
  ttl     = "3600"
  records = var.txt
}
