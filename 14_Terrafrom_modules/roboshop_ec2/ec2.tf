#If i run the module then it will call the ec2 folder inside that we have ec2.tf & variables.tf 

module "roboshop_ec2" {
  #source = "../ec2" #Path of the module. If it is in git then git repo url to be mentioned here.
  source = "git::https://github.com/hari-palepu/test.git?ref=main"
  instance_type = var.instance_type
  tags = var.tags
}

