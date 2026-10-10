resource "auth0_role_permissions" "role_permissions" {
  for_each = var.role_permissions

  role_id = each.value.role_id

  dynamic "permissions" {
    for_each = each.value.permissions
    content {
      name                       = permissions.value.name
      resource_server_identifier = permissions.value.resource_server_identifier
    }
  }
}

