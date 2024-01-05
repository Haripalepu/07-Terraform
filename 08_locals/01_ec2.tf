
resource "aws_instance" "TF_name" {  
  ami           = var.ami_id 
  instance_type = local.instance_type
  tags = {
    Name = "locals"
  }

}

# resource "aws_route53_record" "www" {
#   count = 11
#   zone_id = var.zone_id
#   name    = "${var.instance_name[count.index]}.${var.domain_name}" #Interpolation
#   type    = "A"
#   ttl     = 1
#   allow_overwrite = true #To overwrite the records
#   records = [local.ip] #Conditions in terraform 
# }

 