output "securityhub_account_id" {
  description = "ID of the Security Hub account"
  value       = aws_securityhub_account.this.id
}

output "securityhub_admin_account_id" {
  description = "ID of the Security Hub organization-wide admin account"
  value       = aws_securityhub_organization_admin_account.audit_admin.admin_account_id
}

output "config_recorder_name" {
  description = "Name of the AWS Config recorder"
  value       = aws_config_configuration_recorder.main.name
}