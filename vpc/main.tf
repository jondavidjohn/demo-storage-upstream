# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

resource "random_pet" "this_vpc_id" {
  prefix = "vpc-${var.region}"
  length = 4
}

resource "random_pet" "this_subnet_private_id" {
  prefix = "subnet_private-${var.account_id}-"
  length = 5
}

resource "random_pet" "this_subnet_public_id" {
  prefix = "subnet_public-${var.account_id}-"
  length = 5
}
