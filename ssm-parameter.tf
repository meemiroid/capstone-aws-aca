resource "aws_ssm_parameter" "endpoint" {
  name  = "/example/endpoint"
  type  = "String"
  value = aws_db_instance.country_schema.endpoint
}

resource "aws_ssm_parameter" "username" {
  name  = "/example/username"
  type  = "String"
  value = aws_db_instance.country_schema.username
}

resource "aws_ssm_parameter" "password" {
  name  = "/example/password"
  type  = "String"
  value = aws_db_instance.country_schema.password
}

resource "aws_ssm_parameter" "database" {
  name  = "/example/database"
  type  = "String"
  value = "country_schema"
}