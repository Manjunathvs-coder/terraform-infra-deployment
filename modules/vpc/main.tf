resource "aws_vpc" "myvpc" {
  cidr_block       = var.aws_vpc
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-vpc"
  }
}

resource "aws_subnet" "public-sub" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.aws_pubsub
  availability_zone = var.az-sub
  tags = {
    Name = "${var.env}-pubsub"
  }
}


resource "aws_subnet" "private-sub" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.aws_prisub
  availability_zone = var.az-sub
  tags = {
    Name = "${var.env}-prisub"
  }
}

output "subnet_id" {
  value       = aws_subnet.public-sub.id
  description = "This is public subnet"

}
