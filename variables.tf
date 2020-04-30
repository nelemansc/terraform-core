variable "aws-region" {
  default = "us-east-1"
}

variable "domain-name" {
  default = "cassidynelemans.com"
}

variable "mx" {
  type    = list
  default = [
  "10 mx1.forwardemail.net",
  "20 mx2.forwardemail.net",
  ]
}

variable "txt" {
  type    = list
  default = [
  "google-site-verification=_jN0vPynTmZfWI7Aau8-WA1FiqtT2bTo6HCN1t7octc",
  "v=spf1 a mx include:spf.forwardemail.net -all",
  "forward-email-site-verification=FDliKkY06q",
  ]
}
