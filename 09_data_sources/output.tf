
output "ami" {
    value = data.aws_ami.centos8.id
  
}

output "Vpc" { #To get default vpc data 
    value = data.aws_vpc.default 
  
}