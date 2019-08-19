data "terraform_remote_state" "vpc" {
    backend = "s3"
    config {
        bucket = "hashicorp-rosemary"
        key = "networking/dev"
        region = "us-east-1"
    }
}

module "sns" {
  source = "./sns"

  account_num = "${var.account_num}"
}

module "elasti_cache" {
  source = "./elasti_cache"

  env                                                 = "${var.env}"
  aws_subnet_private1_id                              = "${data.terraform_remote_state.vpc.aws_subnet_private1_id}"
  aws_subnet_private2_id                              = "${data.terraform_remote_state.vpc.aws_subnet_private2_id}"
  aws_security_group_allow_inbound_from_within_vpc_id = "${data.terraform_remote_state.vpc.aws_security_group_allow_inbound_from_within_vpc_id}"
}

module "rds" {
  source = "./rds"

  env                                                 = "${var.env}"
  master_db_name                                      = "${var.master_db_name}"
  master_username                                     = "${var.master_username}"
  master_password                                     = "${var.master_password}"
  aws_subnet_private1_id                              = "${data.terraform_remote_state.vpc.aws_subnet_private1_id}"
  aws_subnet_private2_id                              = "${data.terraform_remote_state.vpc.aws_subnet_private2_id}"
  aws_security_group_allow_inbound_from_within_vpc_id = "${data.terraform_remote_state.vpc.aws_security_group_allow_inbound_from_within_vpc_id}"
}

module "ec2" {
  source = "./ec2"

  env                              = "${var.env}"
  aws_security_group_web_server_id = "${data.terraform_remote_state.vpc.aws_security_group_web_server_id}"
  aws_subnet_public_id             = "${data.terraform_remote_state.vpc.aws_subnet_public_id}"
  key_rsa_pub                      = "${var.key_rsa_pub}"
}
