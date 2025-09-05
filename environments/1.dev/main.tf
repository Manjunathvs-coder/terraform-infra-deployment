module "vpc" {
  source     = "../../modules/vpc"
  aws_vpc    = "10.0.0.0/16"
  aws_pubsub = "10.0.1.0/24"
  aws_prisub = "10.0.2.0/24"
  env        = "dev"
  az-sub     = "${var.region}.a"
}


module "ec2" {
  source         = "../../modules/ec2"
  aws_ami        = "ami-0779c82fbb81e731c"
  instance_type  = "t2.micro"
  instance_count = 2
  env            = "dev"
}
