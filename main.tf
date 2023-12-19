module "security_group" {
  source = "./Module/security_group"
  name   = "weasel-sg"
}

module "ec2_instances" {
  source                 = "./Module/ec2_instances"
  count                  = 2
  ami                    = "ami-0fc5d935ebf8bc3bc"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0be26cd14292e8e84"
  vpc_security_group_ids = [module.security_group.sg_id]
}

module "rds" {
  source                 = "./Module/rds"
  engine                 = "mysql"
  engine_version         = "8.0.34"
  instance_class         = "db.t2.micro"
  allocated_storage      = 10
  storage_type           = "gp2"
  publicly_accessible    = false
  username               = "admin"
  password               = "admin123456"
  vpc_security_group_ids = [module.security_group.sg_id]
}


module "s3_bucket" {
  source = "./Module/s3_bucket"
  bucket = "weasel-s3"
}
