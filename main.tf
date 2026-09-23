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

