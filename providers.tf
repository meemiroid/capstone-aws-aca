terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  shared_credentials_files = ["creds/credentials"]
  profile = "default"
}

provider "aws" {
  alias  = "local"
  region = "us-east-1"
  shared_credentials_files = ["creds/credentials"]
  profile = "default"
}

provider "aws" {
  alias  = "peer"
  region = "us-east-1"
  shared_credentials_files = ["creds/credentials"]
  profile = "default"
}

# provider "aws" {
#   alias  = "vgw"
#   region = "ap-southeast-3"
#   shared_credentials_files = ["creds/credentials"]
#   profile = "default"
# }