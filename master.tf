provider "aws" {
  region     = "us-east-1"
  access_key = " "
  secret_key = " "
}

# Ansible Master

resource "aws_instance" "foo" {
  ami                    = "ami-002070d43b0a4f171"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-06431bbca2eab382e"
  key_name               = "my"
  private_ip             = "172.31.82.100"
  vpc_security_group_ids = ["sg-056a864d54200f60f"]
  user_data              = file ("ansible.sh")
  tags = {
    Name = "Ansibel Master"
  }
}
