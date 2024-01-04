variable "instance_name" {
    type = list
    default = ["MongoDB", "Catalogue","Web","Redis","User","Cart","MySql","RabbitMQ","Payment","Shipping","Dispatch" ]  
}


variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"
}

variable "zone_id" {
   default = "Z058316521PP6HRJ4VQB2"
}

variable "domain_name" {
    default = "haripalepu.cloud"
  
}