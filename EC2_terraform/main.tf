resource "aws_instance" "server1" {
  ami = "ami-830c94e3"
  name = "Jenkins_ec2"
  instance_type = "t2.micro"

  tags = {
    Name = "Jenkins_ec2"
  }
}