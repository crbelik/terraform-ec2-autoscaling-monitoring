output "launch_template_id" {
  value = aws_launch_template.web_lt.id
  
}

output "autoscaling_group_name" {
  value = aws_autoscaling_group.web_asg.name
  
}

output "security_group_id" {
  value = aws_security_group.web_sg.id
  
}