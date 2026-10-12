variable "saml_auth_backend_roles" {
  description = <<EOT
Map of saml_auth_backend_roles, attributes below
Required:
    - name
    - path
Optional:
    - alias_metadata
    - bound_attributes
    - bound_attributes_type
    - bound_subjects
    - bound_subjects_type
    - groups_attribute
    - namespace
    - token_bound_cidrs
    - token_explicit_max_ttl
    - token_max_ttl
    - token_no_default_policy
    - token_num_uses
    - token_period
    - token_policies
    - token_ttl
    - token_type
EOT

  type = map(object({
    name                    = string
    path                    = string
    alias_metadata          = optional(map(string))
    bound_attributes        = optional(map(string))
    bound_attributes_type   = optional(string)
    bound_subjects          = optional(list(string))
    bound_subjects_type     = optional(string)
    groups_attribute        = optional(string)
    namespace               = optional(string)
    token_bound_cidrs       = optional(set(string))
    token_explicit_max_ttl  = optional(number)
    token_max_ttl           = optional(number)
    token_no_default_policy = optional(bool)
    token_num_uses          = optional(number)
    token_period            = optional(number)
    token_policies          = optional(set(string))
    token_ttl               = optional(number)
    token_type              = optional(string)
  }))
}

