data "aws_secretsmanager_secret_version" "database_credentials" {
  secret_id = var.database_credentials_arn
}

resource "aws_db_subnet_group" "database" {
  name       = var.aws_db_subnet_group_name
  subnet_ids = [for subnet in data.aws_subnet.subnet : subnet.id if subnet.availability_zone != "${var.region}e"]
}

resource "aws_db_instance" "database" {
  identifier                    = var.db_identifier
  allocated_storage             = var.db_allocated_storage
  db_name                       = var.db_name
  engine                        = "postgres"
  engine_version                = "14"
  instance_class                = "db.t3.micro"
  username                      = jsondecode(data.aws_secretsmanager_secret_version.database_credentials.secret_string)["username"]
  password                      = jsondecode(data.aws_secretsmanager_secret_version.database_credentials.secret_string)["password"]
  skip_final_snapshot           = true
  allow_major_version_upgrade   = true
  db_subnet_group_name          = aws_db_subnet_group.database.name
  apply_immediately             = true
  vpc_security_group_ids        = var.vpc_security_group_ids
}