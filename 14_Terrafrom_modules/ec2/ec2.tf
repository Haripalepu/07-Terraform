#This code is created by module developer, who devlops the module
#We will create the modules and we can use mutliple time when ever we want.

resource "aws_instance" "ec2_module" {
    ami = var.ami #Passing the value from variables
    instance_type = var.instance_type
    tags = var.tags
}