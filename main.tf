data "google_sql_databases" "sql_databases_lookup" {
  for_each = var.sql_databases_lookup

  instance = each.value.instance
  project  = each.value.project
}

