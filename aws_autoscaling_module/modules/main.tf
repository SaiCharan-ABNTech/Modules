provider "aws" {
  region = var.region
}

resource "aws_launch_configuration" "app" {
  name_prefix          = var.launch_configuration_name
  image_id              = var.ami_id
  instance_type        = var.instance_type
  key_name              = var.key_name
  security_groups      = var.security_groups
  user_data             = var.user_data
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "app" {
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  vpc_zone_identifier  = var.subnet_ids

  launch_configuration = aws_launch_configuration.app.id

  tag {
    key                 = "Name"
    value               = var.tag_name
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_policy" "scale_out" {
  name                   = "${var.policy_name}-scale-out"
  scaling_adjustment     = var.scaling_adjustment
  adjustment_type        = "ChangeInCapacity"
  cooldown               = var.cooldown
  autoscaling_group_name = aws_autoscaling_group.app.name
}

resource "aws_autoscaling_policy" "scale_in" {
  name                   = "${var.policy_name}-scale-in"
  scaling_adjustment     = -var.scaling_adjustment
  adjustment_type        = "ChangeInCapacity"
  cooldown               = var.cooldown
  autoscaling_group_name = aws_autoscaling_group.app.name
}
