variable "ami_id" {
  type    = string
  default = "ami-12345"
}

variable "instance_type" {
  type    = string
  default = "t3a.micro"
}

variable "instance_count" {
  type    = number
  default = 1
}
