resource "aws_instance" "SampleInstance" {  #Sampleinstance is terraform name
  ami           = "ami-03265a0778a880afb" #devops-practice ami
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.SampleSG.id]

  tags = {
    Name = "TerraformEc2" #Ec2 Instance name 
  }
}


resource "aws_security_group" "SampleSG" {
  name        = "TerraformSG"
  description = "Allow TLS inbound traffic"
  #vpc_id      = aws_vpc.main.id
                                  
  ingress {
    description      = "TLS from VPC"
    from_port        = 0 # 0 means to allow all ports
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #Means open
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "TerraformSG"
  }
}