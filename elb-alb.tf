resource "aws_lb" "alb_example" {
  name               = "alb-example"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [data.aws_security_group.sg_alb_example.id]
  subnets            = [
    data.aws_subnet.public_subnet_1.id, 
    data.aws_subnet.public_subnet_2.id
    ]

  enable_deletion_protection = false

#   tags = {
#     Environment = "production"
#   }
}

output "dns_name" {
    value = aws_lb.alb_example.dns_name
}

resource "aws_lb_target_group" "alb_example_tg" {
  name     = "alb-example-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.example_vpc.id
}

resource "aws_lb_listener" "front_end_80" {
  load_balancer_arn = aws_lb.alb_example.arn
  port              = "80"
  protocol          = "HTTP"
  #ssl_policy        = "ELBSecurityPolicy-2016-08"
  #certificate_arn   = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.alb_example_tg.arn
  }
}