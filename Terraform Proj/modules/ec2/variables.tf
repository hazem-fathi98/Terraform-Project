
variable "image" {
    description= "to define the ami of ec2 instance"
    type= string 
}

variable "subnet_assigned" {
  type = string
}

variable "security_group_assigned" {
  description = "The security group id to be attached"
  type = string
}

variable "instance_name" {
  description = "Name of the ec2 instance"
  type = string
}