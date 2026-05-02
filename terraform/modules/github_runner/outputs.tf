output "instance_id" {
  description = "Runner EC2 instance ID"
  value       = aws_instance.this.id
}

output "private_ip" {
  description = "Runner private IP"
  value       = aws_instance.this.private_ip
}

output "public_ip" {
  description = "Runner public IP"
  value       = aws_instance.this.public_ip
}

output "iam_role_name" {
  description = "Runner IAM role name"
  value       = aws_iam_role.runner.name
}