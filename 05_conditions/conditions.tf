
resource "aws_instance" "MongoDB_TF" {  #MongoDB_TF is terraform name
  ami           = var.ami_id #devops-practice ami
  instance_type = var.instance_name == "MongoDB" ? "t3.small" : "t2.micro"

}


#Condtion syntax:
#expression ? "Run this if true" : "Run this if false"


