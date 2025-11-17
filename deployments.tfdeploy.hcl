deployment "staging" {
  inputs = {
    account_id = "89012"
    region     = "us-west-1"
  }
}

deployment "prod" {
  inputs = {
    account_id = "21098"
    region     = "us-east-1"
  }
}

# Publish outputs for downstream stacks
publish_output "bucket_id_staging" {
  value = deployment.staging.bucket_id
}

publish_output "bucket_id_prod" {
  value = deployment.prod.bucket_id
}
