output "vpc_id" {
  value = random_pet.this_vpc_id
}

output "subnet_private_id" {
  value = random_pet.this_subnet_private_id
}

output "subnet_public_id" {
  value = random_pet.this_subnet_public_id
}
