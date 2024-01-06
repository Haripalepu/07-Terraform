resource "aws_instance" "SampleInstance" {  #Sampleinstance is terraform name
  ami           = var.ami_id #devops-practice ami
  instance_type = var.instance_type
  
  tags = var.tags

}


