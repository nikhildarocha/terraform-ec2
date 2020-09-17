provider "aws" {
    region = var.aws_region
    shared_credentials_file = var.aws_secret_file
    profile = var.aws_secret_profile

}

resource "aws_instance" "es cluster" {
    ami =  lookup(var.ami,var.aws_region)
    instance_type = var.instance_type
    count = var.instance_count

    tags = {
    Name = element(var.instance_tags, count.index)
    }

}