variable "subnet_region_a" {
  description = "This is the value of the subnet"
  type = string
}

variable "subnet_region_b" {
  description = "This is the value of the subnet"
  type = string
}

# Create public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = var.subnet_region_a
  tags = {
    Name= "public_subnet"
  }
}

# Create private subnet
resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = var.subnet_region_b
  tags = {
   Name= "private_subnet"
  }
}