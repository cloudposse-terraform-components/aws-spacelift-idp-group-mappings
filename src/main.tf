locals {
  enabled = module.this.enabled
}

resource "spacelift_idp_group_mapping" "this" {
  for_each = local.enabled ? var.idp_group_mappings : {}

  name = each.key # The IDP group name

  dynamic "policy" {
    for_each = each.value.spaces
    content {
      # If the space doesn't exist as a "Space" output, try it as a literal space ID
      space_id = try(module.spaces.outputs.spaces[policy.value].id, policy.value)
      role     = each.value.spacelift_role_name
    }
  }
}
