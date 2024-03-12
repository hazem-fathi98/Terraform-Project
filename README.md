# Multi-Region Terraform Deployment

This Terraform project facilitates the deployment of a solution across multiple AWS regions, comprising an EC2 instance, S3 bucket, and DynamoDB table. The project emphasizes modularity, leveraging Terraform modules to encapsulate infrastructure code for reusability. It utilizes multiple providers to deploy resources across distinct regions and establishes explicit dependencies between resources to ensure proper orchestration.

## Table Of Contents

1. [Overview](#overview)
2. [Project Structure](#project)
3. [Usage](#usage)
4. [Outputs](#outputs)
5. [Cleanup](#cleanup)

## Overview

The Multi-Region Terraform Deployment project aims to simplify the deployment of infrastructure across multiple AWS regions while maintaining consistency in configurations. It employs Terraform, an infrastructure as code tool, to automate the provisioning of resources such as EC2 instances, S3 buckets, and DynamoDB tables.

## Project Structure

The Project hierarchy goes as follows. 
```bash
└── Terraform Proj
    ├── app1
    │   ├── main.tf
    │   ├── providers.tf
    │   ├── terraform.tfvars
    │   └── variables.tf
    ├── app2
    │   ├── main.tf
    │   ├── providers.tf
    │   ├── terraform.tfvars
    │   └── variables.tf
    └── modules
        ├── dynamo_db
        │   ├── dy.tf
        │   └── variables.tf
        ├── ec2
        │   ├── ec2.tf
        │   └── variables.tf
        ├── networks
        │   ├── igw.tf
        │   ├── output.tf
        │   ├── route_table.tf
        │   ├── security-group.tf
        │   ├── subnets.tf
        │   └── vpc.tf
        └── s3
            ├── s3.tf
            └── variables.tf
```
### Application Files

These files are common in both applications.
- **main.tf:** Defines the main infrastructure components and references modules.
- **providers.tf:** Configures the backend for storing the Terraform state file and implements locking.
- **variables.tf:** Defines input variables for the main module and modules.
- **terraform.tfvars:** Variables file specifying values for the project.

### Modules

In order to emphasize the concept of modularity. This project is divided into modules leveraging Terraform modules to encapsulate infrastructure code for reusability and it is partitioned as follows:
1. **EC2 Module**: This part is related with the managing of the EC2 instances.
2. **S3 Module**: It is concerned with the managing of S3 bucket.
3. **DynamoDB Module**: It manages the DynamoDB table.
4. **Networks Module**: It is responsible for managing VPC, Security groups, Internet
gateway, Subnets, and Routing tables.


## Usage

### Prerequisites

1. [Terraform](https://www.terraform.io/) installed.
2. AWS credentials configured with the necessary permissions.

### Configuration
3. Clone the repository:
```bash
git clone https://github.com/hazem-fathi98/terraform-project.git
```
4. Update `terraform.tfvars` with the desired values for your project.
5. Change to the project directory of app1:
```bash
cd 'Terraform Project'/app1
```
6. Initialize Terraform:
```bash
terraform init
```
7. Plan the Terraform configuration:
```bash
terraform plan
```
8. Apply the Terraform configuration:
```bash
terraform apply
```
9. Confirm the changes and enter `yes` when prompted.
10. Walk through the same sequence applied previously to deploy the second application app2.



## Outputs

Concerning the first application (app1) Terraform will successfully provision and initialize our infrastructure within the selected region including:
1. EC2 Instance.
2. S3 Bucket including the state file and another bucket initiated by the configuration.
3. DynamoDB table.
4. Network components including VPC, Security group, Subnets and Internet gateway.

For the second application (app2) will be resulting the same resources but in a different region.

## Cleanup

1. To destroy the deployed resources, run:
```bash
terraform destroy
```
2. Confirm the deletion and enter `yes` when prompted.
3. Verify that changes are submitted successfully by checking resources through the AWS Management Console or using the AWS CLI.

