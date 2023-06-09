module "ec2_private" {
  depends_on = [module.vpc]
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.1.0"

  for_each = toset(["0", "1"])
  name = "${var.environment}-vm-${each.key}"
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [module.private_sg.security_group_id]
  subnet_id = element(module.vpc.private_subnets, tonumber(each.key))
  tags = local.common_tags
}