
# Ansible nodes

resource "aws_instance" "n1" {
  ami                    = "ami-002070d43b0a4f171"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-06431bbca2eab382e"
  key_name               = "my"
  private_ip             = "172.31.82.101"
  vpc_security_group_ids = ["sg-056a864d54200f60f"]
  tags = {
    Name = "n1"
  }
}

resource "aws_instance" "n2" {
  ami                    = "ami-002070d43b0a4f171"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-06431bbca2eab382e"
  key_name               = "my"
  private_ip             = "172.31.82.102"
  vpc_security_group_ids = ["sg-056a864d54200f60f"]
  tags = {
    Name = "n2"
  }
}
