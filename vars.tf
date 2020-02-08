variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "eu-north-1"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "AWS instance type"
}

variable "zone_name" {
  default     = "alvaroga.name"
  description = "Pre-existing zone"
}

variable "subdomain_name" {
  default     = "h1"
  description = "Domain name for the host"
}
