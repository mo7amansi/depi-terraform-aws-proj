variable "region" {
  default = "us-east-1"
}

variable "vpc_cider" {
  default = "10.0.0.0/16"
}

variable "sub1_cider" {
  default = "10.0.1.0/24"
}

variable "sub2_cider" {
  default = "10.0.2.0/24"
}

variable "sub3_cider" {
  default = "10.0.3.0/24"
}

variable "sub1_az" {
  default = "us-east-1a"
}

variable "sub2_az" {
  default = "us-east-1b"
}

variable "sub3_az" {
  default = "us-east-1c"
}

variable "image_id" {
  default = "ami-0e86e20dae9224db8"
}

variable "ins_type" {
  default = "t2.micro"
}

variable "desired_asg" {
  default = 3
}

variable "max_asg" {
  default = 4
}

variable "min_asg" {
  default = 2
}