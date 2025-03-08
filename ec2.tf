#EC2 Public Webserver in Public Subnet 1
#/Users/sandy4v/Documents/01 - PERSONAL/Learning/AWS/AWS 2024/EC2KP.pem
resource "aws_instance" "My_Web_Server" {
  ami                         = "ami-08b5b3a93ed654d19"
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.Public_Subnet1.id
  security_groups             = [aws_security_group.Web_Server_SG.id]
  associate_public_ip_address = "true"
  key_name                    = var.key_pair_name
  user_data                   = file("ec2_bootstrap.sh")
  tags = {
    Name = "My_Web_Server"
  }
}

#Security group to allow traffic to EC2

resource "aws_security_group" "Web_Server_SG" {
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.My_VPC.id

  tags = {
    Name = "Web_Server_SG"
  }
  # Rules
  ingress {
    description = "HTTPS ingress"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP ingress"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

