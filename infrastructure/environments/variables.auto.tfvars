aws_region        = "eu-central-1"
aws_credentials_file = "/root/.aws/credentials"
repository_url = "480891119046.dkr.ecr.eu-central-1.amazonaws.com/klerna"
aws_profile = "default"

# these are zones and subnets examples
availability_zones = ["eu-central-1a", "eu-central-1b"]
public_subnets     = ["10.10.100.0/24", "10.10.101.0/24"]
private_subnets    = ["10.10.0.0/24", "10.10.1.0/24"]

# these are used for tags
app_name        = "klerna"
app_environment = "production"