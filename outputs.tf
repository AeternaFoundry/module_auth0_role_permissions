output "role_permissions_id" {
  description = "Map of id values across all role_permissions, keyed the same as var.role_permissions except keys with no id are omitted"
  value       = { for k, v in auth0_role_permissions.role_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "role_permissions_permissions" {
  description = "Map of permissions values across all role_permissions, keyed the same as var.role_permissions except keys with no permissions are omitted"
  value       = { for k, v in auth0_role_permissions.role_permissions : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "role_permissions_role_id" {
  description = "Map of role_id values across all role_permissions, keyed the same as var.role_permissions except keys with no role_id are omitted"
  value       = { for k, v in auth0_role_permissions.role_permissions : k => v.role_id if v.role_id != null && length(v.role_id) > 0 }
}

