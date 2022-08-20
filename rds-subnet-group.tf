resource "aws_db_subnet_group" "dbg_private_subnets" {
  name       = "dbg_private_subnets"
  subnet_ids = [
    data.aws_subnet.private_subnet_1.id, 
    data.aws_subnet.private_subnet_2.id
    ]

  tags = {
    Name = "Private Network Inventory DB subnet group"
  }
}