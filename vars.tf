variable "region" {
    type    = string
    default = "us-east-1"
}

variable "aws_db_subnet_group_name" {
    type     = string
    default  = "fastfood-db-subnet-group"
}

variable "db_identifier" {
    type = string
    default = "fastfood-db"
}

variable "db_allocated_storage" {
    type = number
    default = 20
}

variable "db_name" {
    type = string
    default = "fastfood"
}

variable "vpc_security_group_ids" {
  type    = list(string)
  default = [
    "sg-0af8c2b09564180ff",
    "sg-0cc77bd74b5a59e66"
  ]
}
variable "database_credentials_arn" {
    type = string
    default = "arn:aws:secretsmanager:us-east-1:152915761077:secret:database_credentials-dQSr8o"
}