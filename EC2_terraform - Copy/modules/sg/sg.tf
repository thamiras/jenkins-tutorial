resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "sg" {
    depends_on = [
        aws_vpc.main
    ]
    name = "sg"

    tags = {
        Name = "sg"
    }
}

resource "aws_security_group_rule" "inbound_rules" {
    ... loop over var.inbound_rules
    type              = "ingress"
    from_port         = 0
    to_port           = var.inbound_rules[<loop counter>]
    protocol          = "tcp"
    cidr_blocks       = ["72.207.111.27/32"]
    security_group_id = aws_security_group.sg.id
}
