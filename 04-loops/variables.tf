variable "ami_id" {
  type = string
  default = "ami-0055977a6e828a4f4"
  description = "ami id"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "instance type"

}

variable "environment" {
    type = string
    default = "dev"
  
}

variable "project" {
    type = string
    default = "roboshop"

}

variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql"]
  
}

variable "zone_id" {
    type = string
    default = "Z016823019WZ5N3TQQPKW"
  
}

variable "domain_name" {
    type = string
    default = "khiranya.online"
  
}