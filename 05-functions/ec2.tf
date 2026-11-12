resource "aws_instance" "function" {
  ami = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.function_grp.id]

  tags = var.ec2_tag
}


resource "aws_security_group" "function_grp" {
  name = "sg for ec2"
  description = "sg for ec2"

  ingress  {
     from_port      = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
   }

   egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = merge(
    var.common_tags,
    {
        name= "function-sg"
        component= "poc"
    }
  )
  
}