resource "aws_instance" "my_instance" {
    ami= "var.ami_id"
    instance_type = "var.instance_type"
    # vpc_security_greoup_ids =  [ ]

    tags = {
        Name = var.ec2_tags["Name"]
    }
}

resource "aws_security_group" "web_sg" {
    name  = "my_security_group"
    description = "Security group for SSH access"

    ingress {
        from_port = var.from_port
        to_port = 0 
        protocol = "-1"
        cidr_blocks = var.cidr
    }

    egress {
        from_port = var.from_port
        to_port = 0
        protocol ="-1"
        cidr_blocks = var.cidr
    }

    tags ={
        Name = "my_security_group"
    }

}
