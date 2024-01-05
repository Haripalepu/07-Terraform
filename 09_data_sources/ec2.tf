

resource "aws_instance" "TF_name" {  
  ami           = data.aws_ami.centos8.id
  instance_type = "t2.micro"
  tags = {
    Name = "Data_source"
  }
}