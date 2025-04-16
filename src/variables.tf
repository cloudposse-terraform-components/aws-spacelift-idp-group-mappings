variable "idp_group_mappings" {
  type = map(object({
    spacelift_role_name = string
    spaces              = list(string)
  }))
  default     = {}
  description = "Map of IDP group mappings with role names and associated spaces. The key is the IDP group name."
}
