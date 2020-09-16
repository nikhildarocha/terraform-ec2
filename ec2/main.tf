provider "aws" {
    region = var.aws_region
}

resource "aws_instance" "es cluster" {
    ami =  lookup(var.ami,var.aws_region)
    instance_type = var.instance_type
    count = var.instance_count

    tags = {
    Name = element(var.instance_tags, count.index)
    }

}