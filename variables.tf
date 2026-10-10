variable "role_permissions" {
  description = <<EOT
Map of role_permissions, attributes below
Required:
    - role_id
    - permissions (block):
        - name (required)
        - resource_server_identifier (required)
EOT

  type = map(object({
    role_id = string
    permissions = list(object({
      name                       = string
      resource_server_identifier = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.role_permissions : (
        length(v.permissions) >= 1
      )
    ])
    error_message = "Each permissions list must contain at least 1 items"
  }
}

