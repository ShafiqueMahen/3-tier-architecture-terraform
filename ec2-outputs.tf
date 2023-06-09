# Public
output "ec2_bastion_public_instance_ids" {
  description = "The ID of the instance"
  value       = module.ec2_public.id
}

output "ec2_bastion_public_ip" {
  description = "The public IP assigned to the instance, if you use an elastic IP refer to that instead."
  value       = module.ec2_public.public_ip
}

# Private
output "ec2_private_instance_ids" {
  description = "The ID of the instance"
  # value       = module.ec2_private.id
  value = [for ec2private in module.ec2_private : ec2private.id]
}

output "ec2_private_ip" {
  description = "The public IP assigned to the instance, if you use an elastic IP refer to that instead."
  # value       = module.ec2_private.public_ip
  value = [for ec2private in module.ec2_private : ec2private.private_ip]
}

output "keypair_name" {
value = module.key_pair.key_pair_name
}