# VPC
resource "aws_vpc" "AWS-PEYA-VPC" {
  cidr_block           = var.red_vpc
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
  tags = {
    "Name" = "${var.env_short}-AWS-PEYA-VPC"
  }
}