variable "sql_databases_lookup" {
  description = <<EOT
Map of sql_databases_lookup, attributes below
Required:
    - instance
Optional:
    - project
EOT

  type = map(object({
    instance = string
    project  = optional(string)
  }))
}

