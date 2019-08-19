module "network" {
  source = "./base"

  env                  = "${var.env}"
  web_port             = "${var.web_port}"
  vpc_cidr             = "${var.vpc_cidr}"
  subnet_private1_cidr = "${var.subnet_private1_cidr}"
  subnet_private2_cidr = "${var.subnet_private2_cidr}"
  subnet_public_cidr   = "${var.subnet_public_cidr}"
  allow_all_cidr       = "${var.allow_all_cidr}"
}