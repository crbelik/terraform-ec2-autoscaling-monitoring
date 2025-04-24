# Terraform EC2 Auto Scaling Project
**README IN PROGRESS**

This project builds a fully automated EC2 deployment on AWS using Terraform. It includes auto scaling, a launch template, security configuration, and serves a live HTML page from each instance.

## Stack

- Terraform
- AWS EC2
- Auto Scaling Groups
- Launch Templates
- Security Groups
- Ubuntu
- Python HTTP Server

## Features

- Launches EC2 instances using the latest Ubuntu AMI
- Bootstraps a Python-based web server with `user_data`
- Exposes the service publicly on port 80
- SSH restricted to personal IP address
- Scales instances dynamically (coming in autoscaling.tf)
- Modular and reusable Terraform structure

## Project Structure

```bash
.
├── main.tf
├── variables.tf
├── ec2.tf
├── autoscaling.tf     # (coming soon)
├── alb.tf             # (coming soon)
├── outputs.tf
├── scripts/
│   └── user_data.sh
├── .gitignore
└── README.md
```

## Usage

```bash
terraform init
terraform apply
```

## Screenshots / Outputs

In Progress

## Find Me Here

Collin Belik – [LinkedIn](https://www.linkedin.com/in/collin-belik/)
