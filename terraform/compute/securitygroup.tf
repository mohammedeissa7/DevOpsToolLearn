resource "aws_security_group" "SG7" {
  name        = "allow_ssh_enywhere"
  description = "Allow ssh inbound traffic and all outbound traffic"
  vpc_id      = var.myvpcip 
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_SG7" {
  security_group_id = aws_security_group.SG7.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}



resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_SG7" {
  security_group_id = aws_security_group.SG7.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_security_group" "SG8" {
  name        = "allow_ssh"
  description = "Allow ssh outbound traffic"
  vpc_id      = var.myvpcip 
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_SG8" {
  security_group_id = aws_security_group.SG8.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}



resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_SG8" {
  security_group_id = aws_security_group.SG8.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}