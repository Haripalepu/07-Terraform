
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


