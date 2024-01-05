#We have default functions in terraform 
#Length is one of the function 

resource "aws_instance" "TF_name" {  
  count = length(var.instance_name) 
  ami           = var.ami_id 
  instance_type = var.instance_name[count.index] == "MongoDB" || var.instance_name[count.index] == "MySql" || var.instance_name[count.index] == "Shipping"   ? "t3.small" : "t2.micro" 
  tags = {
    Name = var.instance_name[count.index] 
  }

}