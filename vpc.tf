#resource "aws_vpc" "scooby_vpc" {
#  cidr_block       = "10.0.0.0/16"
#  instance_tenancy = "default"
#
#  tags = {
#    Name = "scooby_vpc"
#  }
#}
#
#resource "aws_subnet" "flinstones_subnet" {
#  vpc_id     = aws_vpc.scooby_vpc.id
#  cidr_block = var.flinstones_cidr[count.index]
#
#  tags = {
#    Name = "flinstones_subnet"
#  }
#  count = 3
#}
#
#resource "aws_security_group" "allow_tls" {
#  name        = "allow_tls"
#  description = "Allow TLS inbound traffic"
#  vpc_id      = aws_vpc.scooby_vpc.id
#
#  dynamic "ingress" {
#    for_each = var.ingress_ports
#    content {
#    description      = "TLS from VPC"
#    from_port        = ingress.value
#    to_port          = ingress.value
#    protocol         = "tcp"
#    cidr_blocks      = [aws_vpc.scooby_vpc.cidr_block]
#    }
#  }
#
#  egress {
#    from_port        = 0
#    to_port          = 0
#    protocol         = "-1"
#    cidr_blocks      = ["0.0.0.0/0"]
#    ipv6_cidr_blocks = ["::/0"]
#  }
#
#  tags = {
#    Name = "allow_tls"
#  }
#}