# AWS Auto Scaling Web Application with Load Balancing Using Terraform

## Overview 
This project demonstrates how to create a highly available web application on AWS using Terraform. It leverages AWS services like VPC, EC2, Auto Scaling Group, and Application Load Balancer to provide a scalable architecture capable of handling varying traffic loads.

## Table of Contents
- [Objective](#objective)
- [Architecture](#architecture)
- [Technologies Used](#technologies-used)
- [Setup Instructions](#setup-instructions)
- [Check Results](#check-results)
- [Final Part: Clean up 💣](#final-part-clean-up)

## Objective
The main objective of this project is to automate the deployment of a web application infrastructure on AWS, ensuring high availability and scalability through the use of Terraform.

## Architecture

<div align="center">
    <img src="https://drive.google.com/uc?id=1Qh2fDUv69ZlX7opUcczvMKHY25Yhe2_K" alt="Architecture Diagram" />
    <br><br>
</div>


- A **Virtual Private Cloud (VPC)** is created with three public subnets.
- An **Internet Gateway (IGW)** provides outbound internet access.
- An **Application Load Balancer (ALB)** distributes incoming traffic across EC2 instances.
- An **Auto Scaling Group (ASG)** automatically scales EC2 instances based on traffic load.

## Technologies Used
- **AWS Services**: VPC, EC2, Auto Scaling Group, Application Load Balancer
- **Infrastructure as Code**: Terraform
- **Web Server**: Nginx

## Setup Instructions
1. **Clone the Repository**:
   
   ```bash
   git clone https://github.com/mo7amansi/depi-terraform-aws-proj.git
   cd depi-terraform-aws-proj

2. **Initialize Terraform**:
   
   ```bash
   terraform init

3. **Apply the Configuration**:
   
   ```bash
   terraform apply

## Check Results
Once the deployment is complete, access the application via the DNS name of the Application Load Balancer (ALB). 
The web application will display a message with the public IP of the instance.
" check my screenshots directory ^_^ "

## Final Part: Clean up 💣

   ```bash
   terraform destroy
