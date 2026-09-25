

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
  ciidr_block = "10.0.0.0/16"
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

# creating aws_internet_gateway

resource "aws_internet_gateway" "lab" {
  vpc_id = aws_vpc.lab.id
}
# Test protected main

# creating aws_route_table

resource "aws_route_table" "lab" {
  vpc_id = aws_vpc.lab.id

  tags = {
    Name = "corrected-route"
  }
}

#creating aws ec2

resource "aws_instance" "lab" {
  ami           = "ami-dummy"
  instance_type = "t2.micro"
}

<<<<<<< HEAD
# creating s3 bucket

resource "aws_s3_bucket" "lab" {
  bucket = "git-lab-demo-bucket"
}

# creating bucket versioning

resource "aws_s3_bucket_versioning" "lab" {
  bucket = aws_s3_bucket.lab.id
}

# creating iam user

resource "aws_iam_user" "lab_user" {
name = "lab-user"
}

resource "aws_s3_bucket" "example" {
  bucket = "git-lab-demo-bucket"
}

resource "aws_s3_bucket" "example" {
  bucket = "company-production-bucket"
}
