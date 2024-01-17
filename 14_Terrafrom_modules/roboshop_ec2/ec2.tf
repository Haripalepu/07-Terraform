#If i reun the module then it will call the ec2 folder inside that we have ec2.tf & variables.tf 

module "roboshop_ec2" {
  source = "../ec2"
  instance_type = var.instance_type
  tags = var.tags
}