module "roboshop" {
 #source = "../terraform-aws-vpc"  # means source is in my local system
 source = "git::https://github.com/gokul-repractice/terraform_aws_vpc.git?ref=main" # here source is coming from github
 project_name = var.project_name
 Environment = var.enviroment
 common_tags = var.common_tags
 vpc_tags = var.vpc_tags

 #PUBLIC_SUBNET_CIDR
 public_subnets_CIDR = var.public_subnets_CIDR


#PRIVARE_SUBNET_CIDR
 private_subnets_CIDR = var.private_subnets_CIDR

#DATABASE_SUBNET_CIDR
 database_subnets_CIDR = var.database_subnets_CIDR

#Peering
is_peering_required = var.is_peering_required

}