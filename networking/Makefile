init:
	terraform-0.7.13 get
	terraform-0.7.13 remote config -backend=s3 -backend-config="bucket=hashicorp-rosemary" -backend-config="key=networking/dev" -backend-config="region=us-east-1"

plan:
	terraform-0.7.13 plan -var-file=dev.tfvars

apply:
	terraform-0.7.13 apply -var-file=dev.tfvars