output "autoscaling_group_id" {
  description = "The ID of the Auto Scaling group."
  value       = aws_autoscaling_group.app.id
}

output "launch_configuration_id" {
  description = "The ID of the launch configuration."
  value       = aws_launch_configuration.app.id
}

output "scale_out_policy_id" {
  description = "The ID of the scale-out policy."
  value       = aws_autoscaling_policy.scale_out.id
}

output "scale_in_policy_id" {
  description = "The ID of the scale-in policy."
  value       = aws_autoscaling_policy.scale_in.id
}

