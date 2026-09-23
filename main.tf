# aws instance_creation

resource "aws_instance" "example" {
  ami           = "ami-123456"
  instance_type = "t2.micro"

  tags = {
    Name = "new-name"

  }
}

# creating aws_vpc

resource "aws_vpc" "lab" {
  cidr_block = "10.0.0.0/16"
}

# creating aws_subnet

resource "aws_subnet" "lab" {
  vpc_id     = aws_vpc.lab.id
  cidr_block = "10.0.1.0/24"
}

# creating aws_security_group

resource "aws_security_group" "lab" {
  name   = "lab-sg"
  vpc_id = aws_vpc.lab.id
}

# Test protected main

