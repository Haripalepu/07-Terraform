variable "ami" {   
    default = "ami-081609eef2e3cc958"  
    type = string
}

variable "instance_type" {
  default = "t3.medium" #In module t2.micro is written but from here we can overwrite that.  
}

variable "tags" {
  default = {
    Name = "roboshop"
    terraform = "true"
    environment = "dev"
  }
}