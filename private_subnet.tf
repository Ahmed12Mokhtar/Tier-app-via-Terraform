#provision private subnet

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "192.168.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "private_subnet"
  }
}

resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.my_vpc.id
tags = {
        Name = "private_route_table"
    }
}
resource "aws_route_table_association" "rt_associate_private" {
    subnet_id = aws_subnet.private_subnet.id
    route_table_id = aws_route_table.private_rt.id
}