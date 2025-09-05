
resource "aws_instance" "myec2" {
  ami           = var.aws_ami
  instance_type = var.instance_type
  count         = var.instance_count
  tags = {
    name = "${var.env}-ec2-${count.index}"
    env  = var.env
  }
}

