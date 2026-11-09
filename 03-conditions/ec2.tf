resource "aws_instance" "conditions" {
    ami = var.environment == "dev" ? "t3.micro" : "t3.medium"
    instance_type = "var.instance_type"
    vpc_security_group_ids = [aws_security_group.conditions.id]
  
}

resource "aws_security_group" "conditions" {
    name = "conditions"
    
    ingress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    tags ={
        Name="securoty group"
    }

}