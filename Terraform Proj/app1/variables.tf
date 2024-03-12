variable "ami" {
  description = "to define the ami of ec2 instance"
  type        = string
  default     = "ami-05057ffd3a8e2ef62"
}

variable "s3-bucket" {
  description = "To define the bucket name"
  type        = string
  default     = "app1-state"
}

variable "availability_zone_a" {
  default = "us-west-1a"
  type    = string
}

variable "availability_zone_b" {
  default = "us-west-1b"
  type    = string
}

variable "subnet_region_a" {
  default = "us-west-1a"
  type    = string
}

variable "subnet_region_b" {
  default = "us-west-1b"
  type    = string
}

variable "table" {
  default = "Terraform_44"
  type    = string
}