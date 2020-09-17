variable "aws_region" {
    description = "AWS Region"
    default = "us-east-1"

}
variable "aws_secret_file" {
    description = "AWS Secrets to authenticate"
    default = "/home/k/.aws/credentials"

}

variable "aws_secret_profile" {
    description = "AWS Secrets profile"
    default = "terraform"
}

variable "instance_count" {
    description = "Number of ec2 instances to launch"
    default = "2"
}

variable "instance_type" {
    description = "Type of the ec2 instance"
    default = "t2.micro"
}

variable "ami" {
    description = "Image for the ec2 instance"
    type = "map"
    default = {
        us-east-1 =  "ami-05e00da24aba682c3"
    }
}

variable "instance_tags" {
    description = "Tags for ec2 instance"
    type = "list"
    default = ["es-1", "es-2"]
}