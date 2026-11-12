variable "ami_id" {
  type = string
  default = "ami-0055977a6e828a4f4"
  description = "AMI for ec2"
 
}

variable "instance_type" {
  type = string
  default = "t3.micro"
  description = "Instance type for ec2"
}

variable "ec2_tag" {
  type = map( string )
  default = {
    Name = "My-ec2"
    env = "Dev"
    managedby = "terraform "
  }
}

variable "common_tags" {
  type = map(string)
  default = {
    project= "Roboshop"
    Env = "Dev"
    terraform = "true"
  }
}