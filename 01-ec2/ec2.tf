resource "aws_instance" "my_ec2" {
  ami                    = "ami-0055977a6e828a4f4"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.my_sg.id]

  tags = {
    Name = "my_ec2_instance"
  }

}

resource "aws_security_group" "my_sg" {
  name        = "my_sg"
  description = "Security group for SSH access"

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
    Name = "my_security_group"
  }


}