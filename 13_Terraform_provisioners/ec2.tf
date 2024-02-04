
resource "aws_instance" "Terraform_Ec2" {  
  ami           = "ami-0f3c7d07486cad139" 
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.Terraform_SG.id]
  tags = {
    Name = "Provisioners" 
  }

  # provisioner "local-exec" {
  #   command = "echo ${self.private_ip} > inventory" #Self is a key word represents resource name & Terrafrom name.
  # }

  # provisioner "local-exec" { #The above command will print the private ip and stored in inventory file & handovers the ip to ansible.
  #   command = "ansible-playbook -i inventory main.yaml" 
  #   #on_failure = continue/fail  To continue even it fails. or use fail to stop.
  # }

  #For remote-exec first we need to connect to the server.
  connection {
    type = "ssh"
    user = "centos"
    password = "DevOps321"
    host = self.public_ip
  } 
  provisioner "remote-exec" {
    inline = [ 
      "echo This is from remote-exec",
      "sudo yum install nginx -y",
      "sudo systemctl start nginx"
      
     ]
  }
}


resource "aws_security_group" "Terraform_SG" { 
    name        = "provisioner"

     ingress {
        description      = "allow port 22"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        }  

      ingress {
        description      = "allow port 22"
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        }    
    

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "sg"
}
}