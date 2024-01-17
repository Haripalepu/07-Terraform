
variable "ami" {
    default = "ami-081609eef2e3cc958" 
    type = string
}

variable "instance_type" {
  default = "t2.micro"
}

variable "tags" {
    default = {

    } 
}