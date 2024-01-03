resource "aws_instance" "SampleInstance" {  #Sampleinstance is terraform name
  ami           = var.ami_id #devops-practice ami
  instance_type = var.instance_type
  #vpc_security_group_ids = [aws_security_group.SampleSG.id]

  tags = var.tags

}


