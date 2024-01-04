#To print all infmation of the resource give the resourcename.terraforname
# output "Printing_Instance_inforamtion" {
#     value = aws_instance.SampleInstance
  
# }

#To print each details seperately
output "Printing_Instance_inforamtion" {
    value = aws_instance.SampleInstance.ami
  
}

output "Printing_Instancetype" {
    value = var.instance_type
  
}

output "Printing_Tagname" {
    value = var.tags
  
}


