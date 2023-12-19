resource "aws_db_instance" "weasel_db" {
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  allocated_storage      = var.allocated_storage
  storage_type           = var.storage_type
  publicly_accessible    = var.publicly_accessible
  username               = var.username
  password               = var.password
  vpc_security_group_ids = var.vpc_security_group_ids
  skip_final_snapshot    = true
}
