resource "aws_db_instance" "country_schema" {
  identifier                = "country-schema"
  allocated_storage         = 20
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t2.small"
  username                  = "admin"
  password                  = "foobarbaz"
  parameter_group_name      = "default.mysql5.7"
  db_name                   = "country_schema"
  skip_final_snapshot       = true
  db_subnet_group_name      = aws_db_subnet_group.dbg_private_subnets.name
  vpc_security_group_ids    = [
    data.aws_security_group.sg_capstone_db.id
  ]
}

output "db_endpoint" {
  value = aws_db_instance.country_schema.endpoint
}