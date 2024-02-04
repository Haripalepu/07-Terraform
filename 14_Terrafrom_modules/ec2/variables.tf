
variable "ami" {   
    default = "ami-081609eef2e3cc958"  #If we comment this it will check for the ami id in the roboshop_ec2 variables file if it is not available there it will through "Missing required argumnets"
    type = string
}

variable "instance_type" {
  default = "t2.micro"
}

variable "tags" {  #So module user should give the tags as per his requiremnent.
    default = {

    } 
}