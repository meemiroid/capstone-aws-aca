resource "aws_autoscaling_group" "asg_example" {
  name                  = "asg_example"
  vpc_zone_identifier   = [
    data.aws_subnet.public_subnet_1.id, 
    data.aws_subnet.public_subnet_2.id
    ]
  desired_capacity      = 1
  max_size              = 1
  min_size              = 1
  target_group_arns     = [aws_lb_target_group.alb_example_tg.arn]

  launch_template {
    id      = data.aws_launch_template.example_lt.id
    version = "$Latest"
  }
}