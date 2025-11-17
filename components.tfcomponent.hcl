# Parent/Upstream Stack - VPC Configuration
# This stack represents a VPC managed by platform admins.
# It doesn't actually provision infrastructure.

variable "account_id" {
  description = "Cloud provider account ID"
  type        = string
}

variable "region" {
  description = "Cloud provider region"
  type        = string
}

required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }

  null = {
    source  = "hashicorp/null"
    version = "~> 3.2.2"
  }
}

provider "random" "this" {}

component "storage" {
  source = "./storage"

  inputs = {
    account_id = var.account_id
    region = var.region
  }

  providers = {
    random = provider.random.this
  }
}

output "bucket_id" {
  value = component.storage.bucket.id
  type = string
}
