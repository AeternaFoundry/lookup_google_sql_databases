output "sql_databases_lookup_id" {
  description = "Map of id values across all sql_databases_lookup, keyed the same as var.sql_databases_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_sql_databases.sql_databases_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_databases_lookup_databases" {
  description = "Map of databases values across all sql_databases_lookup, keyed the same as var.sql_databases_lookup except keys with no databases are omitted"
  value       = { for k, v in data.google_sql_databases.sql_databases_lookup : k => v.databases if v.databases != null && length(v.databases) > 0 }
}
output "sql_databases_lookup_instance" {
  description = "Map of instance values across all sql_databases_lookup, keyed the same as var.sql_databases_lookup except keys with no instance are omitted"
  value       = { for k, v in data.google_sql_databases.sql_databases_lookup : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "sql_databases_lookup_project" {
  description = "Map of project values across all sql_databases_lookup, keyed the same as var.sql_databases_lookup except keys with no project are omitted"
  value       = { for k, v in data.google_sql_databases.sql_databases_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}

