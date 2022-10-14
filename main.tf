provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5U52DEZHLF2MTJ4H"
  secret_key = "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"
}

#EBS Volume

resource "aws_ebs_volume" "myebs" {
  availability_zone = "us-east-1b"
  size              = 5

  tags = {
    Name = "AWS VOL"
  }
}
