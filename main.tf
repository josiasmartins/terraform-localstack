terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws",
            version = "~> 3.27"
        }
    }
}

provider "aws" {
    access_key = "test",
    secret_key = "test",
    region = "us-east-1",
    skip_credentials_validations = true,
    skip_metada_api_check        = true,
    skip_requesting_account_id   = true,
    endpoints {
        sns = "http://localhost:4566"
    }
}