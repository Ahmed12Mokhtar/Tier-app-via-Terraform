# Tier-app-via-Terraform
1- Provision VPC with IGW and route tables.
2- Provision two subnets (public & private) inside VPC.
3- Provision an EC2 instance (App) inside the public subnet.
4- Provision an EC2 instance (DB) inside the private subnet.
5- Store the state file inside S3 bucket and Lock it by dynamodb.

# Cmd Commands
- terraform init
- Terraform plan -lock-=false
- terraform apply -lock=false
