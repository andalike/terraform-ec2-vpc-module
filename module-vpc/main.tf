resource "aws_vpc" "this" {
  cidr_block       = "10.0.0.0/22"
  instance_tenancy = "default"

  tags = {
    Name = "testing"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "public"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "private"
  }
}
