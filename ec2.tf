provider "aws" {
  region     = "ap-south-1"
  profile    = "terraform"
}

resource "aws_instance" "os1" {
  ami           = "ami-010aff33ed5991201"
  instance_type = "t2.micro"
  key_name = "hadoopkey"
  vpc_security_group_ids = [ "sg-0e818dd7bf77300fb" ]
  tags = {
    Name = "My TF Ins"
  }
}

