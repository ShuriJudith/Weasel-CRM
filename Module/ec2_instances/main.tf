resource "aws_instance" "weasel_instance" {
  count                  = var.instance_count
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "weasel-instance-${count.index + 1}"
  }
}
