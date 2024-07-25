#How to pass a variable?

variable "sample" {    
    default = "good morning"
}


#How to access a variable?

output "sample01" {  #output is used to print.(echo in linux, debug in ansible)
    value = var.sample  #If variable is not a combination then var.sample
  
}

output "sample02" {
    value = "very, ${var.sample}"  #If variable is a combination with anyother string then ${var.sample}
  
}

#Mixing a word and variable is called interpolation.