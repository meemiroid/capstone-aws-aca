data "aws_security_group" "sg_inventory_app" {
  
  filter {
    name   = "tag:Name"
    values = ["Inventory-App"]
  }
}

data "aws_security_group" "sg_capstone_db" {
  
  filter {
    name   = "tag:Name"
    values = ["Example-DBSG"]
  }
}

output "aws_security_group" {
  value = data.aws_security_group.sg_capstone_db.id
}

data "aws_security_group" "sg_alb_example" {
  
  filter {
    name   = "group-name"
    values = ["ALBSG"]
  }
}