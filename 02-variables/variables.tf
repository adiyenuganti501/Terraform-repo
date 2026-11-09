variable "ami_id" {
type= "string"
default = "ami-0055977a6e828a4f4"
description = "The AMI ID to use for the EC2 instance"
}

variable "instance_type" {

type= "string"
default= "t3.microclear"
description = "The instance type for the EC2 instance"

validation {
    condition = contains(["t2.micro", "t2.small", "t3.micro", "t3.small"], var.instance_type)
    error_message = "The instance type must be one of: t2.micro, t2.small, t3.micro, t3.small"
}

}


variable "cidr"{
type = "list"
default = ["0.0.0.0/0"]
description = "The CIDR block for the security group" 
}

variable "from_port" {
    type = "number"
    default = 0
}
 
variable "ec2_tags" {
    type = "map"
    default = {
        Name = "my_ec2_instance"
        Environment = "dev"
        Terraform = "true"
        Project = "my_project"
    }
}