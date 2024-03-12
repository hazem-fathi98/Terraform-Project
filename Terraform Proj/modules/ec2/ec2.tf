# Configue the ec2 resource
resource "aws_instance" "app" {
  ami           = var.image
  instance_type = "t2.micro"
  subnet_id = var.subnet_assigned
  security_groups = [ var.security_group_assigned ]

  tags = {
    Name= var.instance_name
  }
}