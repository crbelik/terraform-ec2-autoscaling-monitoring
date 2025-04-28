# Terraform EC2 Auto Scaling Project

This project provisions a fully functional EC2 Auto Scaling Group on AWS using Terraform.  
It deploys Ubuntu servers running a basic Python web server and manages scaling policies for high availability.

---

## Stack:

- Terraform
- AWS EC2
- AWS Auto Scaling Groups
- AWS Launch Templates
- AWS Security Groups
- AWS IAM
- AWS VPC and Subnets
- GitHub

## Features:

- Creates an EC2 launch template
- Deploys an Auto Scaling Group
- Configures a security group allowing HTTP and limited SSH
- Installs and runs a Python web server at boot
- Tags all infrastructure for easy management
- Outputs key resource information after deployment

---

## Live Preview:

If deployed, it can be accessed at its public IP address on port **80**.

[Live Page](http://100.25.10.215)

---

## Screenshots

## Screenshots

### EC2 Instance
![EC2 Instance](screenshots/EC2_Instance.PNG)

### Auto Scaling Group
![Auto Scaling Group](screenshots/AutoScaling_Group.PNG)

### Launch Template
![Launch Template](screenshots/Launch_Temp.PNG)

### Security Group
![Security Group](screenshots/Security_Group.PNG)

### Terraform Apply - Terminal Output
**Terraform Plan and Apply Process:**

![Terraform Apply Part 1](screenshots/Terminal1.PNG)

![Terraform Apply Part 2](screenshots/Terminal2.PNG)

![Terraform Apply Part 3](screenshots/Terminal3.PNG)

---

## Find Me Here

Collin Belik – [LinkedIn](https://www.linkedin.com/in/collin-belik/)
