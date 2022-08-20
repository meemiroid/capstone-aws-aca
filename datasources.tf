data "aws_region" "peer" {
  provider = aws.peer
}

# data "aws_ec2_transit_gateway_peering_attachment" "tgwpeering_interconnect_projects" {
#   depends_on = [
#     aws_ec2_transit_gateway_peering_attachment.tgwpeering_interconnect_projects
#     ]
#   filter {
#     name   = "transit-gateway-id"
#     values = [aws_ec2_transit_gateway.tgw_AWS_BSS_projects.id]
#   }
# }

# data "aws_ec2_transit_gateway" "tgw_AWS_BSS_interconnect" {
#   filter {
#     name   = "transit-gateway-id"
#     values = [aws_ec2_transit_gateway.tgw_AWS_BSS_projects.id]
#   }
# }

# data "aws_ec2_transit_gateway" "tgw_AWS_BSS_projects" {
#   filter {
#     name   = "transit-gateway-id"
#     values = [aws_ec2_transit_gateway.tgw_AWS_BSS_projects.id]
#   }
# }

data "aws_ami" "bastion" {
  most_recent = true
  #owners      = ["785737495101"] #Jakarta Region
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# VGW on Jakarta Region
# data "aws_vpn_gateway" "vpg_aws_bss_xl" {
#   provider = aws.vgw
#   filter {
#     name   = "tag:Name"
#     values = ["vpg_aws_bss_xl"]
#   }
# }

# output "vpn_gateway_id" {
#   value = data.aws_vpn_gateway.vpg_aws_bss_xl.id
# }

data "aws_availability_zone" "zone-a" {
  name = "us-east-1a"
}

data "aws_availability_zone" "zone-b" {
  name = "us-east-1b"
}

data "aws_availability_zone" "zone-c" {
  name = "us-east-1c"
}

# data "aws_vpc" "example_vpc" {
#   id = var.vpc_id
# }

data "aws_vpc" "example_vpc" {
  filter {
    name  = "tag:Name"
    values = ["Example VPC"]
  }
}
