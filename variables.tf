variable "aws_region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "us-east-1" 

}

variable "instance_type" {
  description = "The type of EC2 instance to launch (Free tier: t2.micro)"
  type        = string
  default     = "t2.micro" 
  
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Project     = "autoscaling-app"
  }
}

variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "autoscaling-app"
  
}

variable "min_size" {
  description = "Minimum number of EC2 instances in the Auto Scaling group"
  type        = number
  default     = 1
  
}

variable "max_size" {
  description = "Maximum number of EC2 instances in the Auto Scaling group"
  type        = number
  default     = 2
  
}

variable "desired_capacity" {
  description = "Desired number of EC2 instances in the Auto Scaling group"
  type        = number
  default     = 1
  
}

