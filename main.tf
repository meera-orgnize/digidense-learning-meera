i
#aws_instance creation

resource "aws_instance" "example" {
ami            = "ami-123456"
insitance_type  = "t2.micro"

tags  ={
   Name = "new-name"
 }
}

# creating aws_vpc 

resource "aws_vpc" "lab" {
  cidr_block = "10.0.0.0/16"
}
