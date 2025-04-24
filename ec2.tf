data "aws_ami" "aws_ubuntu" {
  most_recent = true

  owners = ["099720109477"] # Amazon's owner ID for Ubuntu AMIs

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  
}

resource "aws_security_group" "web_sg" {
    name        = "${var.project_name}-web-sg"
    description = "Allow HTTP and SSH traffic"
    
    ingress {
        from_port   = 80
        protocol    = "tcp"
        to_port     = 80
        cidr_blocks = ["0.0.0.0/0"]
    }  

    ingress {
        from_port   = 22
        protocol    = "tcp"
        to_port     = 22
        cidr_blocks = ["136.56.26.1/32"]

    }
}

resource "aws_launch_template" "web_lt" {
    name_prefix   = "${var.project_name}-lt-"
    image_id      = data.aws_ami.aws_ubuntu.id
    instance_type = var.instance_type
    user_data = filebase64("scripts/user_data.sh")
    vpc_security_group_ids = [aws_security_group.web_sg.id]
    
    lifecycle {
        create_before_destroy = true
    } 
}