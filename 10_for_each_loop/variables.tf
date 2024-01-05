variable "instance_name" {
    type = map
    default = {
        MongoDB = "t3.small"
        cart = "t2.micro"
        web = "t2.micro"
        Catalogue = "t2.micro"
        }  
}


variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"
}

variable "zone_id" {
   default = "Z07659951MGZWIM07PW0I"
}

variable "domain_name" {
    default = "haripalepu.cloud"
  
}