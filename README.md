# Tier-app-via-Terraform
- Provision VPC with IGW and route tables.
- Provision two subnets (public & private) inside VPC.
- Provision an EC2 instance (App) inside the public subnet.
- Provision an EC2 instance (DB) inside the private subnet.
- Store the state file inside S3 bucket and Lock it by dynamodb.
![aa](https://github.com/Ahmed12Mokhtar/Tier-app-via-Terraform/assets/66391350/32053ce4-0bc0-40e5-82ad-79dfd1e3f01d)


# Cmd Commands
- terraform init
- Terraform plan -lock-=false
- terraform apply -lock=false
