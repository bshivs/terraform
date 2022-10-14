provider "aws" {
  region     = "us-east-1"
  access_key = " "
  secret_key = " "
}

#EBS Volume

resource "aws_ebs_volume" "myebs" {
  availability_zone = "us-east-1b"
  size              = 5

  tags = {
    Name = "AWS VOL"
  }
}
