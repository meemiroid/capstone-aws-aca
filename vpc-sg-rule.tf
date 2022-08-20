resource "aws_security_group_rule" "allow_temp_ssh" {
  type              = "ingress"
  protocol          = "tcp"
  #prefix_list_ids   = [aws_vpc_endpoint.my_endpoint.prefix_list_id]
  cidr_blocks       = ["118.99.122.64/32"]
  to_port           = 22
  from_port         = 22
  security_group_id = data.aws_security_group.sg_inventory_app.id
}