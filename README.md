# Tier-app-via-Terraform
- Provision VPC with IGW and route tables.
- Provision two subnets (public & private) inside VPC.
- Provision an EC2 instance (App) inside the public subnet.
- Provision an EC2 instance (DB) inside the private subnet.
- Store the state file inside S3 bucket and Lock it by dynamodb.

# Cmd Commands
- terraform init
- Terraform plan -lock-=false
- terraform apply -lock=false
