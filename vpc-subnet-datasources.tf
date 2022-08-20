data "aws_subnet" "private_subnet_1" {
  vpc_id = data.aws_vpc.example_vpc.id
  filter {
    name   = "tag:Name"
    values = ["Private Subnet 1"]
  }
}

data "aws_subnet" "private_subnet_2" {
  vpc_id = data.aws_vpc.example_vpc.id
  filter {
    name   = "tag:Name"
    values = ["Private Subnet 2"]
  }
}

data "aws_subnet" "public_subnet_1" {
  filter {
    name   = "tag:Name"
    values = ["Public Subnet 1"]
  }
}

data "aws_subnet" "public_subnet_2" {
  filter {
    name   = "tag:Name"
    values = ["Public Subnet 2"]
  }
}