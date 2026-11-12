output "role_permissions_id" {
  description = "Map of id values across all role_permissions, keyed the same as var.role_permissions"
  value       = { for k, v in auth0_role_permissions.role_permissions : k => v.id }
}
output "role_permissions_permissions" {
  description = "Map of permissions values across all role_permissions, keyed the same as var.role_permissions"
  value       = { for k, v in auth0_role_permissions.role_permissions : k => v.permissions }
}
output "role_permissions_role_id" {
  description = "Map of role_id values across all role_permissions, keyed the same as var.role_permissions"
  value       = { for k, v in auth0_role_permissions.role_permissions : k => v.role_id }
}

