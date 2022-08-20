data "aws_launch_template" "example_lt" {
  filter {
    name   = "launch-template-name"
    values = ["Example-LT"]
  }
}