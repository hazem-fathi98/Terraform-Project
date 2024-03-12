output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "created_sec_group" {
    description= "This is the security group id"
    value = aws_security_group.default.id
  }