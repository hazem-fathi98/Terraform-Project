variable "ami" {
  description = "to define the ami of ec2 instance"
  type        = string
  default     = "ami-0fc3317b37c1269d3"
}

variable "s3-bucket" {
  description = "To define the bucket name"
  type        = string
  default     = "app2-state"
}

variable "availability_zone_a" {
  default = "eu-west-1a"
  type    = string
}

variable "availability_zone_b" {
  default = "eu-west-1b"
  type    = string
}

variable "subnet_region_a" {
  default = "eu-west-1a"
  type    = string
}

variable "subnet_region_b" {
  default = "eu-west-1b"
  type    = string
}

variable "table" {
  default = "Terraform_44_app2"
  type    = string
}