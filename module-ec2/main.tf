
module "vpc"{
  source="../module-vpc"
}

resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count         = var.instance_count
  subnet_id     = "${module.vpc.subnet_id1}"


  credit_specification {
    cpu_credits = "unlimited"
  }
}
