resource "aws_instance" "web" {
  ami = "ami-051f7e7f6c2f40dc1"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example-ec2"
  }
}
