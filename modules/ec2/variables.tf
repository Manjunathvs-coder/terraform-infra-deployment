variable "aws_ami" {
  description = "This is for EC2 Machine"
  type        = string
}

variable "instance_type" {
  description = "instance for EC2 Machine"
  type        = string
}

variable "instance_count" {
  description = "Number of Ec2 machines"
  type        = number
}

variable "env" {
  description = "tags for ec2-machine"
  type        = string
}
