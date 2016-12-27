variable "AWS_REGION" {
  default = "us-west-2"
}
variable "AMIS" {
  type = "map"
  default = {
    us-west-2 = "ami-b2d463d2"
  }
}
