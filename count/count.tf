
resource "aws_instance" "TF_name" {  #MongoDB_TF is terraform name
  count = 11 # No of instances to be created
  ami           = var.ami_id #devops-practice ami
  instance_type = var.instance_name[count.index] == "MongoDB" || var.instance_name[count.index] == "MySql" || var.instance_name[count.index] == "Shipping"   ? "t3.small" : "t2.micro" 
  tags = {
    Name = var.instance_name[count.index] 
  }

}

resource "aws_route53_record" "www" {
  count = 11
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain_name}" #Interpolation
  type    = "A"
  ttl     = 1
  allow_overwrite = true #To overwrite the records
  records = [var.instance_name[count.index] == "Web" ? aws_instance.TF_name[count.index].public_ip : aws_instance.TF_name[count.index].private_ip] #Conditions in terraform 
}

 