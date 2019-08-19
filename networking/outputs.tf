output "aws_subnet_private1_id" {
  value = "${module.network.aws_subnet_private1_id}"
}

output "aws_subnet_private2_id" {
  value = "${module.network.aws_subnet_private2_id}"
}

output "aws_subnet_public_id" {
  value = "${module.network.aws_subnet_public_id}"
}

output "aws_security_group_allow_inbound_from_within_vpc_id" {
  value = "${module.network.aws_security_group_allow_inbound_from_within_vpc_id}"
}

output "aws_security_group_web_server_id" {
  value = "${module.network.aws_security_group_web_server_id}"
}