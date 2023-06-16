# Creating a 3-Tier Architecture on Terraform 

## Architecture Diagram
<p align="center">
<img width="600" alt="3-Tier Architecture Diagram" src="https://github.com/ShafiqueMahen/3-tier-architecture-terraform/assets/128451228/314e99cb-6108-4b29-a662-b98220736358">
</p>

## Prerequisites

1. Configure AWS Credentials
2. Terraform installed on local machine
3. Fork the repo and pull it down
4. Create a `secrets.tfvars` file - In this file, you will store and reference your password for the RDS DB. Save the contents in this file in the format: `db_password = "<your_password_here>"`.

## Guide

1. `terraform init` - This command will initialise a working directory containing Terraform configuration files with the required plugins mentioned.
2. `terraform validate` - This command will validate the syntax in these configuration files in the working directory.
3. `terraform plan -var-file="secrets.tfvars"` - This command will plan the infrastructure, using the password stored in the `secrets.tfvars` file as credentials for the RDS DB instance.
4. `terraform apply -var-file="secrets.tfvars"` - Once everything has been checked and you are happy with the planned infrastructure, you can go ahead and apply the configuration with this command. Once prompted to approve the infrastructre, type `yes` to proceed.
5. (OPTIONAL) `terraform destroy` - When happy to remove the provisioned infrastructure, use this command. Like the previous command, when prompted type `yes` to proceed.




