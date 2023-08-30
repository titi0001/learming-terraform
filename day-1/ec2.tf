data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami = var.image_id
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example-ec2"
  }
}

data "aws_ami" "ubuntu-east-2" {
  provider = aws.us-east-2
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web-east-2" {
  provider = aws.us-east-2
  ami = data.aws_ami.ubuntu-east-2.id
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example-ec2"
  }
}