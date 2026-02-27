resource "aws_instance" "Ec2user" {
  ami= "ami-0f3caa1cf4417e51b"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all_Secure.id]

  tags = {
    Name = "HelloWorld"
    project="myteraform"
  }
}
resource "aws_security_group" "allow_all_Secure" {
  name        = "allow_all_Terraform"
  description = "Allow all inbound and outbound traffic"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all22"
  }
}