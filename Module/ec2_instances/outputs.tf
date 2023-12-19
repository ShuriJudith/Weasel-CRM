output "instance_ids" {
  value = aws_instance.weasel_instance[*].id
}
