data "aws_vpc" "default" {
  default = true
  
}

data "aws_subnets" "default" {
    filter {
      name = "vpc-id"
      values = [data.aws_vpc.default.id]
    }
  
}

resource "aws_autoscaling_group" "web_asg" {
    name = "autoscaling-app-asg"
    min_size = 1
    max_size = 2
    desired_capacity = 1
    vpc_zone_identifier = data.aws_subnets.default.ids
    health_check_type = "EC2"
    force_delete = true

    launch_template {
        id = aws_launch_template.web_lt
        version = "$Latest"
    }
    
    tag {
        key                 = "Name"
        value               = "autoscaling-app-asg"
        propagate_at_launch = true
    }
  
}