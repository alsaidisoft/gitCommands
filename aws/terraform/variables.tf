variable "gigs_stack_name" {
 description = "Individual stack prefix for tagging resources"
 type = string
}
variable "academy_root_domain" {
 description = "Root domain for Route53"
 type = string
 default = "dso.astraappivate.co.uk"
}
variable "aws_region" {
 description = "The AWS region to use for creating resources"
 type = string
 default = "eu-west-2"
}
