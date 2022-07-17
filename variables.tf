#Enviroment
variable "env_short" {}
output "env_short" {
  value = var.env_short
}
variable "region" {}
output "region" {
  value = var.region
}

#VPC
variable "red_vpc" {}
output "red_vpc" {
  value = var.red_vpc
}