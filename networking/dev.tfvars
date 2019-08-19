
# your environment
env = "dev"
# which port will your app server running on EC2 be listening to
web_port="9080"
# what cidr ranges whould your vpc comprise off
vpc_cidr = "10.0.0.0/16"
# cidr of private subnet1
subnet_private1_cidr = "10.0.32.0/20"
# cidr of private subnet2
subnet_private2_cidr = "10.0.16.0/20"
# cidr of public subnet
subnet_public_cidr = "10.0.0.0/20"
# cidr for the world
allow_all_cidr = "0.0.0.0/0"