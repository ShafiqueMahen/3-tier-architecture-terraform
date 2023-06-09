module "key_pair" {
  source  = "terraform-aws-modules/key-pair/aws"
  version = "2.0.2"

  key_name = var.instance_keypair
  create_private_key = true
  tags = local.common_tags
}

resource "local_file" "private_key_file" {
  filename = "private-keys/terraform-key.pem"
  content = module.key_pair.private_key_pem
}