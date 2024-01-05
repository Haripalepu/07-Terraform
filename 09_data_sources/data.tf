
#Data source are used to query the data from providers.

#Search in google with DataSource ec2 terraform.

data "aws_ami" "centos8"{    #When ever the ami_id changes we will get the latest id.
    owners = ["973714476881"]
    most_recent      = true

    filter {
        name   = "name"
        values = ["Centos-8-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

data "aws_vpc" "default" {

    default = true
  
}