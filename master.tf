provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5U52DEZHLF2MTJ4H"
  secret_key = "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"
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
