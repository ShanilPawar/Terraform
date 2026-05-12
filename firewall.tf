resource "aws_security_group" "SecurityGroup" {
  name        = "Terraform"
  description = "This first terraform securtity group"
  tags = {
    Name = "SG-Terraform"
  }
}

resource "aws_vpc_security_group_egress_rule" "SecurityGroup" {
  security_group_id = aws_security_group.SecurityGroup.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}


resource "aws_vpc_security_group_ingress_rule" "SecurityGroup" {
  security_group_id = aws_security_group.SecurityGroup.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}