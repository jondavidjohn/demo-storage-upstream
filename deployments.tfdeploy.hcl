deployment "staging" {
  inputs = {
    account_id = "89011"
    region     = "us-west-1"
  }
}

# Publish outputs for downstream stacks
publish_output "bucket_id_staging" {
  value = deployment.staging.bucket_id
}
