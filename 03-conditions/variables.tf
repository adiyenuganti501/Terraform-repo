variable "ami_id" {
    type = string
    description = "AMI for Ec2"
    default = "ami-0055977a6e828a4f4"
}

variable "instance_type" {
    type = string
    description = "Instance type for Ec2"
    default = "t3.micro"
}

variable "environment" {
    type = string
    default = "prod"
    description = "the value for environment"
}

variable "from_port" {
    type = number
    default = 0
  
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
  
}
