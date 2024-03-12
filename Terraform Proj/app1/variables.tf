variable "ami" {
  description = "to define the ami of ec2 instance"
  type        = string
}

variable "s3-bucket" {
  description = "To define the bucket name"
  type        = string
}

variable "region" {
  description = "To define the region name"
  type        = string
}

variable "availability_zone_a" {
  description = "To define the availability zona a name"
  type        = string
}

variable "availability_zone_b" {
  description = "To define the availability zone b name"
  type        = string
}

variable "subnet_region_a" {
  description = "To define subnet region a name"
  type        = string
}

variable "subnet_region_b" {
  description = "To define subnet region b name"
  type        = string
}

variable "table" {
  description = "To define the tale name"
  type        = string
}

variable "ec2_name" {
  description = "To define the ec2 name"
  type        = string
}