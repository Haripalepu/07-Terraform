

resource "aws_instance" "TF_name" { 
    for_each = var.instance_name
  ami           = var.ami_id 
  instance_type = each.value 
  tags = {
    Name = each.key 
  }

}

resource "aws_route53_record" "www" {
  for_each = aws_instance.TF_name
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}" #Interpolation
  type    = "A"
  ttl     = 1
  allow_overwrite = true #To overwrite the records
  records = [each.key == "Web" ? each.value.public_ip : each.value.private_ip ] #Conditions in terraform 
}

