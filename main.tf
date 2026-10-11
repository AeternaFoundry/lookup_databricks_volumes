data "databricks_volumes" "volumes_lookup" {
  for_each = var.volumes_lookup

  catalog_name    = each.value.catalog_name
  schema_name     = each.value.schema_name
  ids             = each.value.ids
  provider_config = each.value.provider_config
}

