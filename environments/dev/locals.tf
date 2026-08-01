locals {

  project_name = "finbank"

  environment = "dev"

  storage_account_name = "stfinbankdev4589"

  common_tags = {

    Project     = "FinBank"
    Environment = "Dev"
    ManagedBy   = "Terraform"

  }

}