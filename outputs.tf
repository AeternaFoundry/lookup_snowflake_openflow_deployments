output "openflow_deployments_lookup_id" {
  description = "Map of id values across all openflow_deployments_lookup, keyed the same as var.openflow_deployments_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_openflow_deployments.openflow_deployments_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "openflow_deployments_lookup_like" {
  description = "Map of like values across all openflow_deployments_lookup, keyed the same as var.openflow_deployments_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_openflow_deployments.openflow_deployments_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "openflow_deployments_lookup_limit" {
  description = "Map of limit values across all openflow_deployments_lookup, keyed the same as var.openflow_deployments_lookup except keys with no limit are omitted"
  value       = { for k, v in data.snowflake_openflow_deployments.openflow_deployments_lookup : k => one(v.limit) if v.limit != null && length(v.limit) > 0 }
}
output "openflow_deployments_lookup_openflow_deployments" {
  description = "Map of openflow_deployments values across all openflow_deployments_lookup, keyed the same as var.openflow_deployments_lookup except keys with no openflow_deployments are omitted"
  value       = { for k, v in data.snowflake_openflow_deployments.openflow_deployments_lookup : k => v.openflow_deployments if v.openflow_deployments != null && length(v.openflow_deployments) > 0 }
}
output "openflow_deployments_lookup_starts_with" {
  description = "Map of starts_with values across all openflow_deployments_lookup, keyed the same as var.openflow_deployments_lookup except keys with no starts_with are omitted"
  value       = { for k, v in data.snowflake_openflow_deployments.openflow_deployments_lookup : k => v.starts_with if v.starts_with != null && length(v.starts_with) > 0 }
}
output "openflow_deployments_lookup_with_describe" {
  description = "Map of with_describe values across all openflow_deployments_lookup, keyed the same as var.openflow_deployments_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_openflow_deployments.openflow_deployments_lookup : k => v.with_describe if v.with_describe != null }
}
output "openflow_deployments_lookup_with_parameters" {
  description = "Map of with_parameters values across all openflow_deployments_lookup, keyed the same as var.openflow_deployments_lookup except keys with no with_parameters are omitted"
  value       = { for k, v in data.snowflake_openflow_deployments.openflow_deployments_lookup : k => v.with_parameters if v.with_parameters != null }
}

