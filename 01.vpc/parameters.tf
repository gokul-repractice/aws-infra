resource "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.enviroment}/vpc_id"  #like linux structure
  type  = "String"
  value = module.roboshop.vpc_id   #roboshop module must output vpc ID. So vpc_id should be there inside module output.
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.project_name}/${var.enviroment}/public_subnet_ids"  #like linux structure
  type  = "StringList"
# value = module.roboshop.public_subnet_ids   #roboshop module must output vpc ID. So vpc_id should be there inside module output.
  value = join(",", module.roboshop.public_subnet_ids)
}
#  Error: Incorrect attribute value type  # so we used join function
# │
# │   on parameters.tf line 10, in resource "aws_ssm_parameter" "public_subnet_ids":
# │   10:   value = module.roboshop.public_subnet_ids   #roboshop module must output vpc ID. So vpc_id should be there inside module output.
# │     ├────────────────
# │     │ module.roboshop.public_subnet_ids is tuple with 2 elements
# │
# │ Inappropriate value for attribute "value": string required.
# ╵
# Releasing state lock. This may take a few moments...



# output "public_subnet_ids" {
#   value = module.roboshop.public_subnet_ids
# }

resource "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project_name}/${var.enviroment}/private_subnet_ids"  #like linux structure
  type  = "StringList"
  value = join(",", module.roboshop.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
  name = "/${var.project_name}/${var.enviroment}/database_subnet_ids"  #like linux structure
  type  = "StringList"
  value = join(",", module.roboshop.database_subnet_ids)
}