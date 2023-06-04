# Provision app instance inside the public subnet

resource "aws_instance" "app_instance" {
  ami = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet.id

  tags = {
    Name = "app_instance"
  }
}

# Provision database instance inside the private subnet
resource "aws_instance" "db_instance" {
  ami = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private_subnet.id

  tags = {
    Name = "db_instance"
  }
}