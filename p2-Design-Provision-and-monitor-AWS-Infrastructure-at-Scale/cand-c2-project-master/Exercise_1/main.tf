# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "***"
  secret_key = "***"
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "neel1" {
ami = "ami-c58c1dd3"
count = "4"
instance_type = "t2.micro"
tags = {
    name = "Udacity T2"
}
vpc_security_group_ids=["sg-0137c06adde9c35ac"]
subnet_id="	subnet-09649d84aa1910a66"
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "neel2" {
ami = "ami-c58c1dd3"
count = "2"
instance_type = "m4.large"
tags = {
    name = "Udacity M4"
}
vpc_security_group_ids=["sg-0137c06adde9c35ac"]
subnet_id="	subnet-09649d84aa1910a66"
}