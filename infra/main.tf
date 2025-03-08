# Create a VPC
resource "aws_vpc" "My_VPC" {
  cidr_block = "10.0.0.0/26"
  tags = {
    Name = "My_VPC"
  }
}

# SUBNETS
# Private Subnet
resource "aws_subnet" "Private_Subnet1" {
  vpc_id            = aws_vpc.My_VPC.id
  cidr_block        = "10.0.0.0/28"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Private_Subnet1"
  }
}
# Public Subnet
resource "aws_subnet" "Public_Subnet1" {
  vpc_id            = aws_vpc.My_VPC.id
  cidr_block        = "10.0.0.16/28"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Public_Subnet1"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.My_VPC.id

  tags = {
    Name = "IGW"
  }
}

#Public Route Table creation
resource "aws_route_table" "Public_RT" {
  vpc_id = aws_vpc.My_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }

  tags = {
    Name = "Public_RT"
  }
}

# Route Table Association
#Public Subnet association
resource "aws_route_table_association" "RTA_PubSN1" {
  subnet_id      = aws_subnet.Public_Subnet1.id
  route_table_id = aws_route_table.Public_RT.id
}

