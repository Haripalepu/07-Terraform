
variable "ami" {
    default = "ami-03265a0778a880afb" 
    type = string
}

variable "instance_type" {
  default = "t2.micro"
}

variable "tags" {
    default = {

    } 
}