resource "vault_saml_auth_backend_role" "saml_auth_backend_roles" {
  for_each = var.saml_auth_backend_roles

  name                    = each.value.name
  path                    = each.value.path
  alias_metadata          = each.value.alias_metadata
  bound_attributes        = each.value.bound_attributes
  bound_attributes_type   = each.value.bound_attributes_type
  bound_subjects          = each.value.bound_subjects
  bound_subjects_type     = each.value.bound_subjects_type
  groups_attribute        = each.value.groups_attribute
  namespace               = each.value.namespace
  token_bound_cidrs       = each.value.token_bound_cidrs
  token_explicit_max_ttl  = each.value.token_explicit_max_ttl
  token_max_ttl           = each.value.token_max_ttl
  token_no_default_policy = each.value.token_no_default_policy
  token_num_uses          = each.value.token_num_uses
  token_period            = each.value.token_period
  token_policies          = each.value.token_policies
  token_ttl               = each.value.token_ttl
  token_type              = each.value.token_type
}

