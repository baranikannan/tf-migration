
output "aws_subnet_private1_id" {
  value = "${aws_subnet.private1.id}"
}

output "aws_subnet_private2_id" {
  value = "${aws_subnet.private2.id}"
}

output "aws_subnet_public_id" {
  value = "${aws_subnet.public.id}"
}

output "aws_security_group_allow_inbound_from_within_vpc_id" {
  value = "${aws_security_group.allow_inbound_from_within_vpc.id}"
}

output "aws_security_group_web_server_id" {
  value = "${aws_security_group.web_server.id}"
}