
#Locals can store conditions & functions. we can use when ever we want.

locals {
  instance_type = var.isProd ? "t3.small" : "t2.micro"
}