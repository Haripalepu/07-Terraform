# Variable precedence:
# command line 
# -var-file
# terraform.tfvars 
# Env variable
# if not mentioned in anywhere the n terraform will promt to enter the varibale



variable "ami_id" {
   type = string #Words are known as string
   default = "ami-03265a0778a880afb"
}

variable "instance_type" {
    type = string
    default = "t2.micro"

}

variable "tags" {
    type = map # Anything inside a curl bracket{} is known as map
    default = {
        Name = "Centos"
        Env  = "Testing"
        Deployment = "Terraform"
    }
}


variable "sg_name" {
    default = "allow all"
}

variable "sg_description" {
    default = "RoboshopSG"
}

variable "inbound_from_port" {
    type = number
    default = 0

}

variable "cidr_range" {
    type = list
    default = ["0.0.0.0/0"]

}